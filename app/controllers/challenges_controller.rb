class ChallengesController < ApplicationController
  def read
  	respond_to do |format|
  		format.json {
        classes = JSON.parse(params['classes'])
        if classes == ["All Classes"]
          render json: Challenge.all
        else
          challenges = []
          Challenge.where(rel_class: 'All Classes').each do |challenge|
            challenges << challenge
          end
          classes.each do |rel_class|
            Challenge.where(rel_class: rel_class).each do |challenge|
              challenges << challenge
            end
          end
          render json: challenges
        end
      }
  	end
  end

  def create
  	challenge = Challenge.new(author: session['username'], text: params['text'], rel_class: params['rel_class'])
  	flash['error'] = challenge.errors if !challenge.save

  	redirect_to '/'
  end
end

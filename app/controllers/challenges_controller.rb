class ChallengesController < ApplicationController
  def all
  	respond_to do |format|
  		format.json {render json: Challenge.all}
  	end
  end

  def create
  	challenge = Challenge.new(author: "/u/#{session['username']}", text: params['text'], rel_class: params['rel_class'])
  	flash['error'] = challenge.errors if !challenge.save

  	redirect_to '/'
  end
end

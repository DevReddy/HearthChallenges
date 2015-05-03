class ChallengesController < ApplicationController
  def all
  	respond_to do |format|
  		format.json {render json: Challenge.all}
  	end
  end
end

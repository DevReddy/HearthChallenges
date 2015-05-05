class StaticController < ApplicationController
  def index
  	session['state'] = Faker::Internet.password
  	@challenges = Challenge.all
  end
end

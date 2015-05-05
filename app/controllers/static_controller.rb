class StaticController < ApplicationController
  def index
  	session['state'] = Faker::Internet.password
  end
end

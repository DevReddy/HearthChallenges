class SessionsController < ApplicationController
  def login
  	session['state'] = Faker::Internet.password
  	redirect_to "https://www.reddit.com/api/v1/authorize?client_id=#{ENV['CLIENT_ID']}&response_type=code&state=#{session['state']}&redirect_uri=https://hearth-challenges-staging.herokuapp.com/auth/reddit&duration=temporary&scope=identity"
  end

  def auth
  	if params['error']
  		session['error'] = params['error']
  		redirect_to '/'
  	else
  		if params['state'] === session['state']
  			response = HTTParty.post("https://www.reddit.com/api/v1/access_token",
  				{:basic_auth => {
  					:username => ENV['CLIENT_ID'],
  					:password => ENV['CLIENT_SECRET']
  					},
  				:body => {
  					:grant_type => "authorization_code",
  					:code => params['code'],
  					:redirect_uri => "https://hearth-challenges-staging.herokuapp.com/auth/reddit"
  					}})
  			reset_session
  			session['error'] = response[:access_token]
  			# session['username'] = HTTParty.get('https://oauth.reddit.com/api/v1/me',
  			# 	headers: {"Authorization" => "bearer #{response[:access_token]}"})
  			redirect_to '/'
  		else
  			session['error'] = 'Returned state does not match.'
  			redirect_to '/'
  		end
  	end
  end

  def logout
  	reset_session
  	redirect_to '/'
  end
end

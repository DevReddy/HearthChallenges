class SessionsController < ApplicationController
  def login
  	redirect_to "https://www.reddit.com/api/v1/authorize?client_id=#{ENV['CLIENT_ID']}&response_type=code&state=#{session['state']}&redirect_uri=https://hearth-challenges-staging.herokuapp.com/auth/reddit&duration=temporary&scope=identity"
  end

  def auth
  	if params['error']
  		flash['error'] = params['error']
  		redirect_to '/'
  	else
  		if params['state'] === session['state']
  			token_response = HTTParty.post("https://www.reddit.com/api/v1/access_token",
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
  			user_response = HTTParty.get('https://oauth.reddit.com/api/v1/me',
  				headers: {
  					"Authorization" => "bearer #{token_response['access_token']}",
  					"User-Agent" => "pc:HearthChallenges.herokuapp.com:v1.0.0 (by /u/bobogyarados)"
  					})
  			session['username'] = user_response['name']
  			redirect_to '/'
  		else
  			flash['error'] = 'Returned state does not match.'
  			redirect_to '/'
  		end
  	end
  end

  def logout
  	reset_session
  	redirect_to '/'
  end
end

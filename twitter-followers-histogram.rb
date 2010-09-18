require 'twitter'
require './credentials'


oauth = Twitter::OAuth.new(CONSUMER_TOKEN, CONSUMER_SECRET)
access_token = oauth.request_token.token
access_secret = oauth.request_token.secret
oauth.authorize_from_access(access_token, access_secret)
client = Twitter::Base.new(oauth)
p client


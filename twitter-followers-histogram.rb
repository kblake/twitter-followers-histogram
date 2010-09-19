require 'rubygems'
require 'twitter'
require 'highline/import'

username = ask("Please enter twitter name")

unless username.empty?

	size = 50 #limit to 50 followers arbitrarily

	ids = Twitter.follower_ids(username)[0..size-1]

	ids.each do |id|
		user = Twitter.user(id)
		count = user.followers_count
		puts "#{user.name}: (#{count}) " + "*" * count
		puts
	end

end

puts "Goodbye!"


require "pry"

	class User
		attr_accessor :email, :age
		@@user_count = 0
		@@all_users = []
			

			def initialize(email_to_save, age_to_save)
				@email = email_to_save
				@age = age_to_save
				@@user_count = @@user_count + 1
				@@all_users << self
			end

			def self.all
				return @@all_users
			end

			def self.count
				return @@user_count
			end

			def self.find_by_email(email)
				@@all_users.each do |user|
					if user.email == email

					return user 
				end

				puts "aucun utilisateur n'a cet email"
				return false
			end
		end



end


class Event
	attr_accessor :start_date, :duration, :title, :email 
		def initialize(date, durée, titre, mail)
			require 'time'
			@start_date = Time.parse(date)
			@duration = durée.to_i
			@title = titre
			@email = []
			@email << mail

		end

		def self.postpone_24h
			require 'time'
			@start_date += 24*60*60
		end

		def self.end_date
			return @start_date + @duration
		end


	end


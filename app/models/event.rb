class Event < ActiveRecord::Base
	has_many :times
	has_many :users, through :times
	
end

class User < ActiveRecord::Base
	has_many :times
	has_many :events, through :times

end

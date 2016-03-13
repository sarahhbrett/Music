class User < ActiveRecord::Base
	has_secure_password
	has_many :reviews
	
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
	
	 def age(dob)
				now = Time.now.utc.to_date
				now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
	 end
	
end

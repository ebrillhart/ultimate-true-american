class User < ActiveRecord::Base

	# checks for email and checks that it is unique
	validates :email,
  		presence: true,
  		uniqueness: {case_sensitive: false}


	has_many :game

	# checks for a password
  	validates_presence_of :password, on: :create

  	# calls bcrypt
  	has_secure_password
  	
  	# authenticates email by password
  def self.authenticate email, password
      User.find_by_email(email).try(:authenticate, password)
  end
end

class User < ApplicationRecord
    before_save { email.downcase! }
    # self. not necesary 
    validates :name , presence:true, length: { maximum: 50}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    #name starting with a capital letter is a constant
    validates :email, presence: true, length: { maximum: 255 },
                      format: { with: VALID_EMAIL_REGEX },
                      uniqueness: { case_sensitive: false } 
                      #rails infers uniqueness is true
    has_secure_password
    validates :password , presence: true , length: {minimum:6}
    #save a securely hashed password_digest attribute to the database
    #pair of virtual atributes password and passwoed_confirmation indlucing presence validation and matching validations
    #authenticate method, returns the user when the password is correct

end

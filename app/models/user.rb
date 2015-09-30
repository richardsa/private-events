 class User < ActiveRecord::Base
  attr_accessor :remember_token
  
  
 # Returns a random token.
  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end
  # encrypts token
  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end
  
   private
  # Remembers a user in the database for use in persistent sessions.
  def create_remember_token
    self.remember_token = User.digest(User.new_remember_token)
  end
end

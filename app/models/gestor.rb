class Gestor < ActiveRecord::Base
	belongs_to :organo
	has_secure_password
	before_create :create_remember_token

	def Gestor.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def Gestor.hash(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = Gestor.hash(Gestor.new_remember_token)
    end
end

class Gestor < ActiveRecord::Base
	belongs_to :organo
	has_secure_password
end

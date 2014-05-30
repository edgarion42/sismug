class Persona < ActiveRecord::Base
	has_many :gestions
	before_save { self.curp = curp.upcase }
	validates :nombre1, presence: true, length: { maximum: 30 }
	validates :nombre2, length: { maximum: 30 }
	validates :apellido1, presence: true, length: { maximum: 30 }
	validates :apellido1, length: { maximum: 30 }
	validates :direccion, presence: true
	validates :fecha_nacimiento, presence: true
	validates :telefono, presence: true
	VALID_CURP_REGEX = /\A[A-Z][AEIOUX][A-Z]{2}[0-9]{2}[0-1][0-9][0-3][0-9][MH][A-Z][AS|BC|BS|CC|CS|CH|CL|CM|DF|DG|GT|GR|HG|JC|MC|MN|MS|NT|NL|OC|PL|QT|QR|SP|SL|SR|TC|TS|TL|VZ|YN|ZS|NE]{4}[0-9A-Z][0-9]\z/i
	validates :curp, presence: true, format: { with:VALID_CURP_REGEX }, uniqueness: { case_sensitive: false }
end

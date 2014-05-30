class Gestion < ActiveRecord::Base
	belongs_to :gestor
	belongs_to :persona
	default_scope -> { order('created_at DESC') }
	validates :persona_id, presence: true
	validates :gestor_id, presence: true
	validates :descripcion, presence: true
end

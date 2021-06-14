class CosmicLesson < ActiveRecord::Base
  has_many :cosmic_parts
  has_many :cosmic_accents, through: :cosmic_parts

  has_many :lesson_parts
  has_many :cosmic_parts, :through => :lesson_parts
end

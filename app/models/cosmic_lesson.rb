class CosmicLesson < ActiveRecord::Base
  has_many :lesson_parts
  has_many :cosmic_parts, :through => :lesson_parts
end

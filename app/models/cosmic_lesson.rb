class CosmicLesson < ActiveRecord::Base
  has_many :ccss_lessons
  has_many :ccss_maths , through: :ccss_lessons
end

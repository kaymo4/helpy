class CosmicAccent < ActiveRecord::Base
  belongs_to :cosmic_part
  belongs_to :cosmic_lesson
  belongs_to :ccss_math
end

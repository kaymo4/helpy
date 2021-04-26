class CosmicPart < ActiveRecord::Base
  belongs_to :cosmic_lesson
  belongs_to :ccss_math
end

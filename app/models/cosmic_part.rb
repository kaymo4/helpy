class CosmicPart < ActiveRecord::Base
  belongs_to :cosmic_lesson
  belongs_to :ccss_math
  #get all parts per ccss id

  scope :per_ccss_id, -> (ccss_math_id) {
        where(ccss_math_id: ccss_math_id).pluck(:content)
 }

end

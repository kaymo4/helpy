class CosmicAccent < ActiveRecord::Base
  belongs_to :cosmic_part
  belongs_to :cosmic_lesson
  belongs_to :ccss_math
  #get all accents per ccss id in parts and standards

  scope :per_ccss_id_per_part, -> (ccss_math_id) {
    where(ccss_math_id: ccss_math_id).where('cosmic_part_id IS NOT NULL').pluck(:cosmic_part_id, :content)
  }
  scope :per_ccss_id_no_part, -> (ccss_math_id) {
    where(ccss_math_id: ccss_math_id).where('cosmic_part_id IS NULL').pluck(:content)
  }


end

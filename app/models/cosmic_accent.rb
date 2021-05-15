class CosmicAccent < ActiveRecord::Base
  belongs_to :cosmic_part

  def to_label

    #{self.ccss} / #{self.part}

  end
end

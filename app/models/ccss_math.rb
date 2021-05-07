class CcssMath < ActiveRecord::Base
  # instance of the CcssMath model has these methodes
  # CcssMath.cosmic_lessons.exists?
  #  CcssMath.cosmic_lessons.reload
  has_many :ccss_lessons
  has_many :cosmic_lessons, through: :ccss_lessons
end

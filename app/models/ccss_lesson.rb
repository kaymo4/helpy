class CcssLesson < ActiveRecord::Base
  # discards the cached copy of ccss lessons and goes back to the database
  #ccss_lesson.cscs_maths.reload.empty?
  #Each instance of this model will have these methods:
  # https://guides.rubyonrails.org/association_basics.html#the-has-many-through-association
  #association
  #association=(associate)
  #build_association(attributes = {})
  #create_association(attributes = {})
  # create_association!(attributes = {})
  #reload_association


  belongs_to :ccss_math
  belongs_to :cosmic_lesson
end

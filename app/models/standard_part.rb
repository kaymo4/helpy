class StandardPart < ActiveRecord::Base
  #KM
  #   this is suggested by scenic gem to work around missing primary keys in view. So we can use .first .last .find
  # KM tested in console, it works!!
  self.primary_key = :ccss_db_id
end

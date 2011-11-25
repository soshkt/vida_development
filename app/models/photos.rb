class Photos < ActiveRecord::Base
  
  def self.count_new_photos
    Photos.group("date(created_at)").count
  end
  
  def self.count_new_photos_by_hours
    Photos.group("hour(created_at)").count
  end
  
  def self.count_new_photos_by_weekday
    Photos.group("DAYNAME(created_at)").count
  end

end
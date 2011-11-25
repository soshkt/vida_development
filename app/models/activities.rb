class Activities < ActiveRecord::Base
  def self.get_photo
    Activities.where("activity_type = 1");
  end
  
  def self.get_video
    Activities.where("activity_type = 2");
  end
  
  
end

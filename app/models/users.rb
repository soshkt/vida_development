class Users < ActiveRecord::Base
  
  def self.count_new_user
    Users.group("date(created_at)").count
  end
  
  def self.count_new_user_by_hours
    Users.group("hour(created_at)").count
  end
  
  def self.count_new_user_by_weekday
    Users.group("DAYNAME(created_at)").count
  end
  
  def self.count_got_from
    Users.group("got_from").count
  end
    

  
end

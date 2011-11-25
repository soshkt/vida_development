class AnalystController < ApplicationController
  
  def index 
  
  end
  
  def show_line_chart
    show
  end
  
  def show_pie_chart
    show
  end
  
  
  def new_users
    @numbers = Users.count_new_user
    @name = 'User'
    @title = 'New Users'
    render "show_line_chart"
  end
  
  def new_users_by_hours
    @numbers = Users.count_new_user_by_hours
    @name = "User"
    @title = 'New Users'
    render "show_line_chart"
  end
  
  def new_users_by_weekday
    @numbers = Users.count_new_user_by_weekday
    @name = "User"
    @title = 'New Users'
    render "show_line_chart"
  end
  
  def new_photos
    @numbers = Photos.count_new_photos
    @name = 'Photos'
    @title = 'New Photos'
    render "show_line_chart"
  end
  
  def new_photos_by_hours
    @numbers = Photos.count_new_photos_by_hours
    @name = 'Photos'
    @title = 'New Photos'
    render "show_line_chart"
  end
  
  def new_photos_by_weekday
    @numbers = Photos.count_new_photos_by_weekday
    @name = 'Photos'
    @title = 'New Photos'
    render "show_line_chart"
  end
  
  def count_got_from
    @numbers = Users.count_got_from
    @name = 'Users'
    @title = "设备使用情况"
    render "show_pie_chart"
  end
  
end

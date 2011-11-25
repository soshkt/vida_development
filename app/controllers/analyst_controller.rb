class AnalystController < ApplicationController
  
  def index 
  
  end
  
  def show_line_chart
    show
  end
  
  def show_pie_chart
    show
  end
  
  def todo
    if (params[:name] == "0")
      @numbers = Users
      @name = "User"
      @title = "New User"
    elsif (params[:name] == "1")
      @numbers = Activities.get_photo
      @name = "Photo"
      @title = "New Photo"
    elsif (params[:name] == "2")
      @numbers = Activities.get_video
      @name = "Video"
      @title = "New Video"
    elsif (params[:name] == "3")
      @numbers = Activities 
      @name = "Photo and Video"
      @title = "New Photo and Video"
    end
    @numbers = @numbers.where("DATE(created_at) > '#{params[:startDate]}'")
    @numbers = @numbers.where("DATE(created_at) <= '#{params[:endDate]}'")
    
    if (params[:type] == "0")
      @numbers = @numbers.group("date(created_at)").count
    elsif (params[:type] == "1")
      @numbers = @numbers.group("hour(created_at)").count
    elsif (params[:type] == "2")
      @numbers = @numbers.group("DAYOFWEEK(created_at)").count
    end
    
    respond_to do |f|
      f.js
    end
   # render "show_line_chart"
    
  end
  
  
end

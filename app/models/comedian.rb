class Comedian < ActiveRecord::Base
  def image_path
    folder_name = "#{@firstname}_#{lastname}".downcase
    image_path = "images/comedians/#{folder_name}/profile_pic.jpg"
  end
end

class Comedian < ActiveRecord::Base
  has_many :specials
  validates_presence_of :firstname
  validates_presence_of :age

  def image_path
    folder_name = "#{firstname}_#{lastname}".downcase
    "images/comedians/#{folder_name}/profile_pic.jpg"
  end
  def name
    return firstname unless lastname
    firstname + ' ' + lastname
  end
end

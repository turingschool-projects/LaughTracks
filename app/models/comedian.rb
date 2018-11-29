class Comedian < ActiveRecord::Base
  has_many :specials
  validates_presence_of :firstname
  validates_presence_of :age

  def image_path
    folder_name = name.downcase.gsub(' ', '_')
    "images/comedians/#{folder_name}/profile_pic.jpg"
  end
  def name
    return firstname unless lastname
    firstname + ' ' + lastname
  end
  def self.average_age
    average(:age)
  end
  def self.cities
    distinct.pluck(:city)
  end
end

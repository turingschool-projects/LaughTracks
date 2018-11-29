class Comedian < ActiveRecord::Base
  has_many :specials
  validates_presence_of :firstname
  validates_presence_of :age

  def self.fetch_data(params)
    result = {}
    if params[:age]
      comedians = Comedian.where(age: params[:age])
      specials = Special.where(comedian_id: comedians.map(&:id))
      result[:comedians] = comedians
      result[:cities] = comedians.pluck(:city)
      result[:average_age] = comedians.average(:age)
      result[:average_runtime] = specials.map(&:runtime).sum / specials.size
      result[:total_specials] = specials.size
    else
      result[:comedians] = Comedian.all
      result[:cities] = Comedian.cities
      result[:average_age] = Comedian.average_age
      result[:average_runtime] = Special.average_runtime
      result[:total_specials] = Special.all.size
    end
    result
  end

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

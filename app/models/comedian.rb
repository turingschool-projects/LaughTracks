class Comedian < ActiveRecord::Base
  has_many :specials

  validates_presence_of :name, :age, :hometown

  def self.ids
    pluck(:id)
  end

  def self.average_age
    average(:age)
  end

  def self.all_hometowns
    pluck('DISTINCT hometown')
  end

  def self.all_hometowns_list
    all_hometowns.join(', ')
  end
end

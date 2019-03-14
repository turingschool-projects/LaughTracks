class Comedian < ActiveRecord::Base
  has_many :specials

  validates :name, presence: true
  validates :age, presence: true

  def self.average_age
    average(:age)
  end

  def self.hometowns
    comedians = Comedian.all
    towns_string = " "
    all_towns(comedians).each do |town|
      towns_string << " - "<< town
    end
    towns_string
  end

  def self.all_towns(comedians)
    all_towns = comedians.map do |comedian|
      comedian.home_town.to_s
    end
    all_towns.sort.uniq
  end
end

class Comedian < ActiveRecord::Base
  has_many :specials

  validates :name, presence: true
  validates :age, presence: true

  def self.average_age
    average(:age).round
  end

  def self.hometowns
    towns_string = " "
    pluck(:home_town).uniq.sort.each do |town|
      towns_string << town << " - "
      end
    towns_string
  end

end

class Comedian < ActiveRecord::Base
  has_many :specials
  validates_presence_of :name,
                        :age,
                        :birthplace

  def self.average_age
    average(:age).round
  end

  def self.hometown
    pluck(:birthplace)
  #   "#{name}: #{birthplace}\n" put this in view
  end

  def self.comedian_name
    pluck(:name)
  end
end

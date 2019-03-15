class Comedian < ActiveRecord::Base
  has_many :specials

  validates_presence_of :name, :age, :hometown, :headshot_link

  def self.average_age
    average(:age)
  end

  def self.all_hometowns
    pluck(:hometown).uniq
  end

  def self.average_specials_runtime
    Special.average(:runtime)
  end
end

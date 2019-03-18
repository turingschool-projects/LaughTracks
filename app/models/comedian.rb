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
    pluck(:hometown).uniq
  end

  def self.all_hometowns_list
    all_hometowns.join(', ')
  end

  def self.sorted_by_name
    order(:name)
  end

  def self.sorted_by_city
    order(:hometown)
  end

  def self.sorted_by_age
    order(:age)
  end
end

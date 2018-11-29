class Comedian < ActiveRecord::Base
  has_many :specials

  validates :age, presence: true
  validates :name, presence: true

  def self.average_age
    average(:age).to_i
  end
end

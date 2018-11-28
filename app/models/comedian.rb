class Comedian < ActiveRecord::Base
  has_many :specials

  validates :age, presence: true
  validates :name, presence: true
end

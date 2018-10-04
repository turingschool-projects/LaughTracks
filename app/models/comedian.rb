class Comedian < ActiveRecord::Base
  validates_presence_of :age, :name

  has_many :specials
end

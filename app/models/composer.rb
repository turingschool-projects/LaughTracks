class Composer < ActiveRecord::Base
  has_many :symphonies

  validates :surname, presence: true
  validates :age, presence: true

end

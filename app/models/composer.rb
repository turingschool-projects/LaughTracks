class Composer < ActiveRecord::Base
  has_many :symphonies

  validates :surname, presence: true
  validates :forename, presence: true
  validates :city, presence: true
  validates :dob, presence: true
  validates :dod, presence: true
  validates :age, presence: true
  validates :thumbnail, presence: true
  validates :age, presence: true

  def self.average_age
    average(:age)
  end

end

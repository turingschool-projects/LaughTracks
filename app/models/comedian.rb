class Comedian < ActiveRecord::Base
  has_many :specials
  validates_presence_of :name,
                        :age,
                        :birthplace,
                        :image_url

  def self.average_age
    average(:age).round
  end
end

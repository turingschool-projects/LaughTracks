class Comedian < ActiveRecord::Base
  has_many :specials

  validates_presence_of :name, :age, :hometown, :headshot_link

  def self.average_age
    sum(:age) / count.to_f
  end
end

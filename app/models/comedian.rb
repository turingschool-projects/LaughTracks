class Comedian < ActiveRecord::Base

validates_presence_of :name, :birthdate, :city
has_many :specials

  def age
    (Date.today.jd - birthdate)/365
  end

  def self.average_age
    jdavg = average(:birthdate).to_i
    (Date.today.jd - jdavg)/365
  end

end

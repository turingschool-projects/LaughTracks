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

  def self.unique_cities
    select(:city).distinct.pluck(:city)
  end

  def self.by_age(age_in)
    high = Date.today.jd - (age_in * 365)
    low = high - 364
    where(:birthdate => low..high)
  end

  def self.find_specials
    comic_ids = Comedian.all.pluck(:id)
    Special.where(:comedian_id => comic_ids)
  end

  def specials_count
    specials.count
  end

end

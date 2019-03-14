class Bourbon < ActiveRecord::Base
  # has_many :awards

  def self.avg_proof
    avg = Bourbon.average(:proof).round(1)
  end

  def self.avg_expert_score
    avg = Bourbon.average(:expert_score).round(1)
  end

  def self.avg_avg_rating
    avg = Bourbon.average(:avg_rating).round(1)
  end

  def self.cities
    bourbons = Bourbon.pluck(:location).uniq
  end

end



# bourbons = Bourbon.where("location LIKE '%KY'").pluck(:location).uniq

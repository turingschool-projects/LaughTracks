class Bourbon < ActiveRecord::Base
  has_many :awards

  validates_presence_of :title,
                        :distillery,
                        :location,
                        :description,
                        :proof,
                        :expert_score,
                        :avg_rating,
                        :image

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

  def self.sort_state(state)
    bourbons = Bourbon.where("location LIKE '%#{state}'").pluck(:location).uniq
    # is this going to work?
  end

end

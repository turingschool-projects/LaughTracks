class Bourbon < ActiveRecord::Base
  has_many :awards

  validates_presence_of :name,
                        :distillery,
                        :location,
                        :description,
                        :proof,
                        :expert_score,
                        :avg_rating,
                        :bottle_image

  def self.avg_proof
    avg = Bourbon.average(:proof).round(1)
  end

  def self.avg_expert_score
    avg = Bourbon.average(:expert_score).round(1)
  end

  def self.avg_avg_rating
    avg = Bourbon.average(:avg_rating).round(2)
  end

  def self.cities
    bourbons = Bourbon.pluck(:location).uniq
  end

  def self.select_state(state)
    bourbons = Bourbon.where("location LIKE '%#{state}'")
    # is this going to work?
  end

end

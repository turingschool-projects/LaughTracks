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
    avg = Bourbon.average(:proof)
  end

  def self.avg_expert_score
    avg = Bourbon.average(:expert_score)
  end

  def self.avg_avg_rating
    avg = Bourbon.average(:avg_rating)
  end

  def self.cities
    bourbons = Bourbon.pluck(:location).uniq
  end

  def self.select_state(state)
    bourbons = Bourbon.where("location LIKE '%#{state}'")
    # is this going to work?
  end

  def self.sort_by(param)
    if param == "avg_rating" || param == "expert_score"
      bourbons = Bourbon.order(param.to_sym => :desc)
    else
      bourbons = Bourbon.order(param.to_sym)
    end
  end

  def self.list_states
    cities = Bourbon.pluck(:location)
    states = cities.map do |city|
      city[-2,2]
    end
    states.uniq.sort
  end
end

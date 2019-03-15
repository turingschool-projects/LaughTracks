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

  def self.sort_by(param)
    if param == "avg_rating" || param == "expert_score"
      bourbons = Bourbon.order(param.to_sym => :desc)
    else
      bourbons = Bourbon.order(param.to_sym)
    end
  end

  # def self.sort_distillery
  #   bourbons = Bourbon.order(:distillery)
  # end
  #
  # def self.sort_proof
  #   bourbons = Bourbon.order(:proof)
  # end
  #
  # def self.sort_expert_score
  #   bourbons = Bourbon.order(expert_score: :desc)
  # end
  #
  # def self.sort_avg_rating
  #   bourbons = Bourbon.order(avg_rating: :desc)
  # end

  def self.list_states
    cities = Bourbon.pluck(:location)
    states = cities.map do |city|
      city[-2,2]
    end
    states.uniq.sort
  end

end

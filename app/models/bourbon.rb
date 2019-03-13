class Bourbon < ActiveRecord::Base
  attr_reader   :name,
                :distillery,
                :location,
                :description,
                :proof,
                :expert_score,
                :avg_rating,
                :bottle_image
  def initialize(bourbon_params)
    @name = bourbon_params["name"]
    @distillery = bourbon_params["distillery"]
    @location = bourbon_params["location"]
    @description = bourbon_params["description"]
    @proof = bourbon_params["proof"]
    @expert_score = bourbon_params["expert_score"]
    @avg_rating = bourbon_params["avg_rating"]
    @bottle_image = bourbon_params["bottle_image"]
  end

  def self.all
    bourbons = Bourbon.all
  end
end

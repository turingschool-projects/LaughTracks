class Comedian < ActiveRecord::Base
  attr_reader :name, :age, :city

  def initialize(comedian_info)
    @name = comedian_info["name"]
    @age = comedian_info["age"]
    @city = comedian_["city"]
  end

end

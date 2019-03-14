class Comedian < ActiveRecord::Base
  has_many :specials

  def average_age
    @comedians.sum do |comedian|
      comedian.age
    end 
  end

end

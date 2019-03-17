class Comedian < ActiveRecord::Base
    has_many :specials

    validates :name, presence: true
    validates :age, presence: true
    

    def self.average_age
       Comedian.average(:age).round
    end

    def self.unique_hometowns
        unique_comedians = Comedian.select(:birthplace).distinct
        unique_hometowns = unique_comedians.map {|comedian| comedian.birthplace}
        unique_hometowns.join(", ")
    end
end

class Comedian < ActiveRecord::Base
  has_many :specials

  validates :name, presence: true
  validates :age, presence: true

  def self.average_age
    average(:age)
  end

  def self.hometowns
    towns_string = " "
    pluck(:home_town).uniq.sort.each do |town|
      towns_string << town << " - "
      end
    towns_string
  end

end

# def self.populate(params)
#   @comedians = Comedian.all
#   if @comedians.pluck(:age).include?(params[:age].to_i)
#     @comedians = Comedian.where(age: params[:age])
#     # @specials = Special.where(comedian_id: @comedians.pluck(:id))
#   else
#     @comedians = Comedian.all
#     # @specials = Special.all
#   end
# end

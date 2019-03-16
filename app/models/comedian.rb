class Comedian < ActiveRecord::Base
  has_many :specials

  validates_presence_of :name, :age

  def self.average_age(comedians_list)
    if comedians_list.average(:age)
      comedians_list.average(:age)
    else
      0
    end
  end

  def self.unique_cities()
    uniq_cities = select('DISTINCT city')
    uniq_cities.map { |comedian| comedian.city }.sort()
  end

  def self.list_comedians(params)
    if params.count > 0 && params[:age]
      Comedian.where(age: params[:age])
    else
      Comedian.all
    end
  end
end

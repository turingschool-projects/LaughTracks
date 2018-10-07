class Comedian < ActiveRecord::Base
  validates_presence_of :name, :age
  has_many :specials

  def self.average_age
    average(:age).round(2)
  end

  def self.unique_cities
    pluck(:city).uniq
  end

  def self.filter(params)
    if params.empty?
      Comedian.all
    elsif params[:sort]
      Comedian.order(params[:sort])
    else
      Comedian.where(params)
    end
  end
end

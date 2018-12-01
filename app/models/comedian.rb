class Comedian < ActiveRecord::Base
  has_many :specials

  validates :name, presence: true
  validates :age, presence: true

  def self.avg_age
    average(:age).round(2)
  end

  def self.uniq_city
    distinct(:city).pluck(:city)
  end

  def self.list_comedians(params)
    return Comedian.all unless params
    if params[:age]
      comedians = Comedian.where(age:params[:age])
    else
      comedians = Comedian.all
    end
  end

end

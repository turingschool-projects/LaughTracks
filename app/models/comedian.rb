class Comedian < ActiveRecord::Base
  has_many :specials

  validates_presence_of :name, :age, :city

  def self.average_age(caller = self)
    caller.average(:age)
  end

  def self.uniq_hometowns(caller = self)
    caller.select(:city).pluck(:city).uniq
  end

  def self.find_by_age(param, caller = self)
    query = ""
    query = "age = '#{param}'" if param =~ /^\d+$/
    if param =~ /(<|>)=\d+/
      operator,e,*age = param.split("")
      query = "age #{operator}= '#{age.join}'"
    elsif param =~ /(<|>)\d+/
      operator,*age = param.split("")
      query = "age #{operator} '#{age.join}'"
    end
    caller.where(query)
  end
end

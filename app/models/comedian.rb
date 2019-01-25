class Comedian < ActiveRecord::Base
  validates :name, presence: true
  validates :age, presence: true
  validates :birthplace, presence: true
  has_many :specials

  def self.average_age(queries = {})
    filter_queries(queries)
    where(queries).average(:age).to_i
  end

  def self.birthplaces(queries = {})
    filter_queries(queries)
    where(queries).select(:birthplace).distinct.map {|comedian| comedian.birthplace}
  end

  def self.filter_queries(queries)
    queries.keep_if {|key, value| column_names.include?(key.to_s)}
  end
end

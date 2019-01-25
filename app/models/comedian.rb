class Comedian < ActiveRecord::Base
  validates :name, presence: true
  validates :age, presence: true
  validates :birthplace, presence: true
  has_many :specials

  def self.average_age(limits = {})
    limits.keep_if {|key, value| column_names.include?(key.to_s)}
    where(limits).average(:age).to_i
  end
end

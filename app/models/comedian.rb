class Comedian < ActiveRecord::Base
  validates :name, presence: true
  validates :age, presence: true
  validates :born, presence: true
  has_many :specials

  def name_as_kebab
    name.downcase.gsub(/ /, "-")
  end
end

class Comedian < ActiveRecord::Base
  validates :name, presence: true
  validates :age, presence: true
  validates :born, presence: true

  def name_as_kebab
    name.downcase.gsub(/ /, "-")
  end
end

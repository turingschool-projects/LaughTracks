class Comedian < ActiveRecord::Base
  validates_presence_of :name, :age, :city
end

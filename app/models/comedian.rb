class Comedian < ActiveRecord::Base
  validates_presence_of :age, :name
end

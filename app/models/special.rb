class Special < ActiveRecord::Base
  attr_reader :name

  def create(name)
    @name = name
  end

end

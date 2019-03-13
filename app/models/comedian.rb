class Comedian < ActiveRecord::Base
  # has_many :specials
  def specials
    Special.where(comedian_id: id)
  end

end

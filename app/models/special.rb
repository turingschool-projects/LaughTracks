class Special < ActiveRecord::Base
  belongs_to :comedian

  def self.get_comedian_specials(comedian_id)
    where(comedian_id: comedian_id)
  end
end

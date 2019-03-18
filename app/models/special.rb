class Special < ActiveRecord::Base
  belongs_to :comedian

  validates_presence_of :name, :length, :thumbnail

  def self.specials_for_comedian_set(comedian_set)
    where(comedian_id: [comedian_set.ids])
  end

end

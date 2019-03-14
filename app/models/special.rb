class Special < ActiveRecord::Base
  belongs_to :comedian

  validates_presence_of :name, :runtime, :comedian_id

  def abbreviation
    name.downcase.slice(0,5).squeeze
  end
end

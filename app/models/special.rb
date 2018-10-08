class Special < ActiveRecord::Base
  validates_presence_of :name, :comedian_id, :thumbnail, :runtime

  belongs_to :comedian

  def self.average_runtime
    average(:runtime).to_i
  end
end

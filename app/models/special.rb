class Special < ActiveRecord::Base

validates_presence_of :name, :release_date, :runtime_length, :comedian_id, :image_url
belongs_to :comedian

  def self.average_runtime
    average(:runtime_length).to_i
  end


end

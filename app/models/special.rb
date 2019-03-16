class Special < ActiveRecord::Base
  belongs_to :comedians
  validates_presence_of :name
                        :runtime_mins
                        :comedian_id
                        :image_url

  def self.average_special_length
    average(:runtime_mins).round
  end
end

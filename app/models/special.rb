class Special < ActiveRecord::Base
  belongs_to :comedian
  validates_presence_of :title,
                        :runtime_mins,
                        :image_url

  def self.average_run_length
    average(:runtime_mins).round
  end
end

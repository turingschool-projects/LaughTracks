class Special < ActiveRecord::Base
  belongs_to :comedian
  validates :title, presence: true
  validates :run_time, presence: true
  validates :image_url, presence: true
  validates :comedian_id, presence: true
  def average_runtime
    self.class.average(:run_time)
  end
end

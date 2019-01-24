class Special < ActiveRecord::Base
  belongs_to :comedian
  validates :title, presence: true
  validates :run_time, presence: true
  validates :image_url, presence: true
  validates :comedian_id, presence: true

  def self.average_runtime
    average(:run_time)
  end

  def self.count_total
    count(:id)
  end

  def self.count_specials(comedian_id)
    where(comedian_id: comedian_id).count
  end
end

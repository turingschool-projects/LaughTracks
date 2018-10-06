class Special < ActiveRecord::Base
  validates_presence_of :name

  belongs_to :comedian

  def self.average_run_time
    average(:run_time).round(1)
  end

  def self.by_comedians(comedians)
    com_ids = comedians.pluck(:id)
    where(comedian_id: com_ids)
  end

end

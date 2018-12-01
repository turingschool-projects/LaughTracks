class Special < ActiveRecord::Base
  belongs_to :comedian

  validates :name, presence: true

  def self.avg_runtime
    average(:run_time).to_f.round(2)
  end

  def self.total_specials(comedians=Comedian.all)
    where(comedian_id: comedians).count
  end
end

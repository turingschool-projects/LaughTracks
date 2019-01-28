class Special < ActiveRecord::Base
  belongs_to :comedian

  validates :name, presence: true

  def self.average_runtime
    average(:run_time).round unless count == 0
  end

  def self.get_comedians_specials(comedians)
    where(comedian_id: comedians.map {|comedian| comedian.id})
  end
end

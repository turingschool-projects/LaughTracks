class Special < ActiveRecord::Base
  belongs_to :comedian

  validates :name, presence: true

  def self.average_runtime
    Special.average(:runtime)
  end

  def self.filter_by_age(age)
    Special.includes(:comedian).where(comedians: { age: age })
  end

end

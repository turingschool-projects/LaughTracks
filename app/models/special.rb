class Special < ActiveRecord::Base
  belongs_to :comedian

  def self.avg_runtime
    average(:runtime).round
  end

  def self.total_number_of_specials
    self.all.count
  end

  def self.find_runtime_by_comedian_by_age(age)
      comedian = Comedian.where(age: age)
      Special.where(comedian_id: comedian).average(:runtime).round
  end
end

class Special < ActiveRecord::Base
  belongs_to :comedian
  validates :title, presence: true
  validates :run_time, presence: true
  validates :image_url, presence: true
  validates :comedian_id, presence: true

  def self.average_runtime(age)
    if age
      comedians = Comedian.where(age: age)
      ids = comedians.pluck(:id)
      specials = Special.where(comedian_id: ids)
      specials.average(:run_time)
    else
      average(:run_time)
    end
  end

  def self.count_total(age)
    if age
      comedians = Comedian.where(age: age)
      ids = comedians.pluck(:id)
      specials = Special.where(comedian_id: ids)
      specials.count(:id)
    else
      count(:id)
    end
  end

  def self.count_specials(comedian_id)
    where(comedian_id: comedian_id).count
  end
end

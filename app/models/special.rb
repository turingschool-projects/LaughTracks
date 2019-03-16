class Special < ActiveRecord::Base
  belongs_to :comedian

  validates_presence_of :title

  def self.average_run_time(age)
    if age
      selected_specials = Special.includes(:comedian).where(comedians: { age: age })
      if selected_specials.average(:run_time)
        return selected_specials.average(:run_time)
      else
        return 0
      end
    else
      average(:run_time)
    end
  end

  def self.special_count(age)
    if age
      selected_specials = Special.includes(:comedian).where(comedians: { age: age })
      selected_specials.all.count
    else
      all.count
    end
  end
end

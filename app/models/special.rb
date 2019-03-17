class Special < ActiveRecord::Base
  belongs_to :comedian

  validates_presence_of :title

  def self.average_run_time
    if average(:run_time) then average(:run_time) else 0 end
  end

  def self.special_count
    all.count
  end

  def self.list_specials(params)
    if params[:age]
      Special.includes(:comedian).where(comedians: { age: params[:age] })
    else
      Special.all
    end
  end
end

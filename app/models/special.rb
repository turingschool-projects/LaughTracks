class Special < ActiveRecord::Base
  belongs_to :comedian
  validates :name, presence: true

  def self.average_run_time
    Special.average(:length).to_f
  end
end

class Special < ActiveRecord::Base
  belongs_to :comedian

  validates :name, presence: true

  def self.average_runtime
    Special.average(:runtime).to_f.round(2)
  end

end

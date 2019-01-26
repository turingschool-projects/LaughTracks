class Special < ActiveRecord::Base
  belongs_to :comedian
  validates_presence_of :name,
                        :runtime

  def self.average_runtime
    average(:runtime).to_i
  end
end

class Special < ActiveRecord::Base
  validates :name, presence: true
  validates :comedianId, presence: true
end

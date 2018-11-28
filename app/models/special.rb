class Special < ActiveRecord::Base
  belongs_to :comedian

  validates :title, presence: true
end

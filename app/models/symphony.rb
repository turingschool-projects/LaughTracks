class Symphony < ActiveRecord::Base
  belongs_to :composer

  validates :name, presence: true
  validates :key, presence: true
  validates :year, presence: true
  validates :composer_id, presence: true
  
end

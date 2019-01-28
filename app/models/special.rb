class Special < ActiveRecord::Base
  validates :name, presence: true
  validates :comedian_id, presence: true
  belongs_to :comedian

  def name_as_kebab
    name.downcase.gsub(/ /, "-")
  end

  def self.average_length(comedians)
    where(comedian_id: comedians.pluck(:id)).average(:length)
  end
end

class Special < ActiveRecord::Base
  validates :name, presence: true
  validates :comedian_id, presence: true
  belongs_to :comedian

  def name_as_kebab
    name.downcase.gsub(/ /, "-")
  end
end

class Special < ActiveRecord::Base
  belongs_to :comedian

  validates_presence_of :name, :runtime, :thumbnail_link

  def self.average_runtime
    if count > 0
      average(:runtime)
    else
      0
    end
  end

  def self.specials_count
    count
  end
end

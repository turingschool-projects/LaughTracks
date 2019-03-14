class Special < ActiveRecord::Base
  belongs_to :comedian
  validates_presence_of :name,
                        :runtime_mins,
                        :image_url
end

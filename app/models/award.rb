class Award < ActiveRecord::Base
  belongs_to :bourbons

  validates_presence_of :name,
                        :award_type,
                        :year,
                        :image
  # do I need any more methods??
end

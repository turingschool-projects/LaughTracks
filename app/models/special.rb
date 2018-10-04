class Special < ActiveRecord::Base
  validate_presence_of :name, :comedian_id
end

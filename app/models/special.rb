class Special < ActiveRecord::Base
  belongs_to :comedians

  def self.average_run_time
    specials = Special.all
    combined_length = specials.sum do |special|
      special.run_time
    end
      combined_length / specials.count
  end

end

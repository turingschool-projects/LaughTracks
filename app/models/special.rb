class Special < ActiveRecord::Base
    validates :name, presence: true

    def self.average_special_runtime
        Special.average(:runtime_mins).round
    end
end
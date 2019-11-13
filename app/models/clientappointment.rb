class Clientappointment < ApplicationRecord

    belongs_to :client
    belongs_to :employee

    validates_date :date, required: true
    validates_time :time, :allow_nil => false

  

end 
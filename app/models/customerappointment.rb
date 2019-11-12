class Customerappointment < ApplicationRecord
    belongs_to :customer
    belongs_to :employee
end

class Customer < ApplicationRecord
    has_many :customer, through: :customerappointments
end

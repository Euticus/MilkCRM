class Client < ApplicationRecord

    has_many :employees, through: :clientappointments
    has_many :products

end 
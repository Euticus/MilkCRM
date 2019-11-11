class Client < ApplicationRecord

    has_many :employees, through: :clientappointments

end 
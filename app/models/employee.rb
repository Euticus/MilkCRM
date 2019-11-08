class Employee < ApplicationRecord

    has_many :clients, through :clientappointments

end 
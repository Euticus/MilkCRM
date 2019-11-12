class Employee < ApplicationRecord

    has_many :clients, through: :clientappointments
    has_many :customers, through: :customerappointments
    has_many :clientappointments
    has_many :customerappointments

    validates :email, confirmation: true

end 
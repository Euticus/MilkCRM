class Customer < ApplicationRecord
    has_many :employees, through: :customerappointments

    validates :email, confirmation: true
end

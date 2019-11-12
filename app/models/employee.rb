class Employee < ApplicationRecord

    has_many :clients, through: :clientappointments
    has_many :customers, through: :customerappointments
    has_many :clientappointments
    has_many :customerappointments

    validates :email, presence: true, uniqueness: true, 'valid_email_2/email': {message: 'email must be valid syntax: youremail@domain.com'}
    validates :phone, presence: true, length: { is: 10 }

end 
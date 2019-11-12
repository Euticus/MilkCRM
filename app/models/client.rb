class Client < ApplicationRecord

    has_many :employees, through: :clientappointments
    has_many :products

    validates :email, presence: true, uniqueness: true, 'valid_email_2/email': {message: 'Must be valid syntax: youremail@domain.com'}
    validates :phone, presence: true, uniqueness: true, length: { is: 10 }

end 
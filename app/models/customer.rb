class Customer < ApplicationRecord
    has_many :employees, through: :customerappointments

    validates :email, presence: true, uniqueness: true, 'valid_email_2/email': {message: 'must be valid syntax: youremail@domain.com'}
    validates :phone, presence: true, length: { is: 10 }
end

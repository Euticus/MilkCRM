class Client < ApplicationRecord

    has_many :employees, through :appointments

end 
class Customer < ApplicationRecord
    validates :email, presence: true

    has_many :orders
end

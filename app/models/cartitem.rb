class Cartitem < ApplicationRecord
    validates :product_id, presence: true
    validates :quantity, presence: true, 
    numericality: {only_integer: true, greater_than: 0, less_than: 100, allow_blank: true}
end

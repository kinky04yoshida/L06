class Product < ApplicationRecord
    has_one :cartitem, dependent: :destroy
    has_many :cartitem_carts, through: :cartitems, source: :cart
    validates :name, presence: true, uniqueness: true
    validates :price, presence: true
end

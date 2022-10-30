class Cart < ApplicationRecord
    has_many :cartitems
    has_many :cartitem_products, through: :cartitems, source: :product
end

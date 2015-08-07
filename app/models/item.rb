class Item < ActiveRecord::Base
  belongs_to :wishlist
  belongs_to :charity, through: :wishlist
end

class Coupon < ApplicationRecord
  # extend Enumerize
  belongs_to :user
  # enumerize :buyind, in: {buy: 0, not_buy: 1}
end

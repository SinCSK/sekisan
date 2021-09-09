class Item < ApplicationRecord
  has_many :item_quotations
  has_many :item, through: :item_quotations
  #belongs_to :user

  with_options presence: true do
    validates :name
    validates :unit
    validates :unit_price
  end
end

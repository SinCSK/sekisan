class Quotation < ApplicationRecord
  has_many :item_quotations
  has_many :quotations, through: :item_quotations
  belongs_to :clients
  belongs_to :user
end

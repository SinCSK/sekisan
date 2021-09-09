class ItemQuotation < ApplicationRecord
  belongs_to :item
  belongs_to :quotation
end

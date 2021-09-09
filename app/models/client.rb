class Client < ApplicationRecord
  has_many :quotations
  belongs_to :user

  with_options presence: true do
    validates :company
    validates :name
    validates :email
    validates :tel
  end
end

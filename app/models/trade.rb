class Trade < ApplicationRecord
  belongs_to :user

  # has_one :image

  has_many_attached :images, dependent: :destroy

  
end

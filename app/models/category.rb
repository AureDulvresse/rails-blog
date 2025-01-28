class Category < ApplicationRecord
  has_one_attached :image

  validates_presence_of :title, on: :create, message: "can't be blank"
end

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  validates :name, :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end

# WHAT IS THE FUCKING PROBLEM WITH PHONE NUMBER?

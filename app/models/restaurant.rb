class Restaurant < ApplicationRecord
  has_many :reviews, :dependent => :destroy
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }

  def self.categories
    ["chinese", "italian", "japanese", "french", "belgian"]
  end
end

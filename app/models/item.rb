class Item < ApplicationRecord
  belongs_to :list
  validates :code, length: {is: 4}

def self.by_code
  order(:code)
end

def item_price
  "#{self.name} {self.price}"
end

before_validation :ensure_price_has_value

private
  def ensure_price_has_value
    if price.nil?
    self.price = "$0"
  end
end
end

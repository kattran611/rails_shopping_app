class Store < ApplicationRecord
  # validations


  # associations
  has_many :lists, dependent: :destroy
  # callbacks


  # instance/classes



end

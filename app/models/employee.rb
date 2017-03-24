class Employee < ApplicationRecord
  has_many :attributes, dependent: :destroy
end

class Member < ApplicationRecord
  has_many :departments, dependent: :destroy
end

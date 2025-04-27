class Product < ApplicationRecord

  validates :name, presence: true # Instances of this class must always have a name
end

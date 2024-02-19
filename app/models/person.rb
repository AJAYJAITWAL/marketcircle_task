class Person < ApplicationRecord
  has_one :detail

  accepts_nested_attributes_for :detail
  validates_associated :detail

  validates :name, presence: true
end

class Detail < ApplicationRecord
  belongs_to :person

  validates :title, presence: true
  validates :age, presence: true, numericality: { only_integer: true }
  validates :phone, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }

end

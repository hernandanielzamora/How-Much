class Group < ApplicationRecord
  belongs_to :user
  has_many :payment, dependent: :delete_all

  validates :name, presence: true, length: { maximum: 100 }
  validates :icon, presence: true

  def recent_transactions
    payment.order(created_at: :desc).limit(5)
  end
end

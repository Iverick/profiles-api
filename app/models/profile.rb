class Profile < ApplicationRecord
  belongs_to :user, counter_cache: true

  validates_uniqueness_of :name, scope: :user_id

  enum gender: [:male, :female]

  scope :adults, -> { where('birthday <= ?', 18.years.ago) }
end

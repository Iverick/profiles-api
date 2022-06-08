class Profile < ApplicationRecord
  belongs_to :user, counter_cache: true

  enum gender: [:male, :female]

  scope :adults, -> { where('birthday <= ?', 18.years.ago) }
end

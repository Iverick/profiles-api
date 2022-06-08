class Profile < ApplicationRecord
  belongs_to :user, counter_cache: true

  enum gender: [:male, :female]

  def self.profiles_older_18
    ActiveRecord::Base.connection.execute(
      "SELECT COUNT(*) 
      FROM profiles 
      WHERE birthday < current_date - interval '18 year'")
  end
end

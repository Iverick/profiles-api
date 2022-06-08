class Profile < ApplicationRecord
  belongs_to :user, counter_cache: true

  enum gender: [:male, :female]

  def self.profiles_older_18
    @result = ActiveRecord::Base.connection.execute(
      "SELECT COUNT(*) 
      FROM profiles 
      WHERE birthday < current_date - interval '18 year'")
    # Transforming query result value from hash to string
    @count_entries = @result[0]
    if @count_entries.include?('count')
      return @count_entries['count']
    else
      return @count_entries
    end
  end
end

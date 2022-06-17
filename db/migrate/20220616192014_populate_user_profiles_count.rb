class PopulateUserProfilesCount < ActiveRecord::Migration[7.0]
  def change
    User.all.each do |user|
      User.reset_counters(user.id, :profiles)
    end
  end
end

class AddProfileCounterCacheToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :profiles_count, :integer
  end
end

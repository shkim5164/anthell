class AddCountingToUsers < ActiveRecord::Migration
  def change
    add_column :users, :counting, :integer, default: 0
  end
end

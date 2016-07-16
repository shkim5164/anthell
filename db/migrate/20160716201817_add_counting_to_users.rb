class AddCountingToUsers < ActiveRecord::Migration
  def change
    add_column :users, :counting, :integer
  end
end

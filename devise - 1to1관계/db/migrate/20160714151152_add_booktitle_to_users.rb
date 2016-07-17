class AddBooktitleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :booktitle, :string
  end
end

class AddColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :news, :counts, :integer
  end
end

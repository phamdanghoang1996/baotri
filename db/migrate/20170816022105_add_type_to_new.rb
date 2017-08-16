class AddTypeToNew < ActiveRecord::Migration[5.1]
  def change
    add_reference :news, :type, foreign_key: true
  end
end

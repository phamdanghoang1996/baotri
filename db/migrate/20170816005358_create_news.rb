class CreateNews < ActiveRecord::Migration[5.1]
  def change
    create_table :news do |t|
      t.string :title, limit:200
      t.text :introdute
      t.text :content
      t.string :image, limit:100
      t.datetime :create_day
      t.datetime :update_day
    end
  end
end

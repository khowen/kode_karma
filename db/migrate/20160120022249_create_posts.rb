class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.integer :need_id
      t.string :need_type

      t.timestamps null: false
    end
  end
end

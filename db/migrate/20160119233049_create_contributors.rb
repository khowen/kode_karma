class CreateContributors < ActiveRecord::Migration
  def change
    create_table :contributors do |t|
      t.string :skill
      t.string :website
      t.string :company

      t.timestamps null: false
    end
  end
end

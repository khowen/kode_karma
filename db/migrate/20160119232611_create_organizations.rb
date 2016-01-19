class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :organization_name
      t.integer :ein
      t.string :focus
      t.string :description
      t.string :location
      t.string :website

      t.timestamps null: false
    end
  end
end

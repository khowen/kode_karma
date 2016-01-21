class AddOrganizationRefToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :organization, index: true, foreign_key: true, null: false
  end
end

class RemoveNeedFromPost < ActiveRecord::Migration
  def change
    remove_column :posts, :need_id, :integer
    remove_column :posts, :need_type, :string
  end
end

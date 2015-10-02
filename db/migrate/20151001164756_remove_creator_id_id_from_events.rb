class RemoveCreatorIdIdFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :creator_id_id, :string
    remove_column :events, :creator_id, :string
    add_column :events, :creator_id, :integer
    add_index :events, :creator_id
  end
end

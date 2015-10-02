class AddCretorIdRefToEvents < ActiveRecord::Migration
  def change
    add_reference :events, :creator_id, index: true, foreign_key: true
  end
end

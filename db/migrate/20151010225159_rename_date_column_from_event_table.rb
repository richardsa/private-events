class RenameDateColumnFromEventTable < ActiveRecord::Migration
  def change
    remove_column :events, :date, :string
      add_column :events, :date, :datetime
  end
end

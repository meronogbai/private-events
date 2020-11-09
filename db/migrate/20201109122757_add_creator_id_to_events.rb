class AddCreatorIdToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :creator_id, :integer, default: nil
    add_foreign_key :events, :users, column: :creator_id
  end
end

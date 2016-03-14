class AddIndexToHstore < ActiveRecord::Migration[5.0]
  def change
    add_index :mailboxes, :data, using: :gin
  end
end

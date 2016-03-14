class CreateMailboxes < ActiveRecord::Migration[5.0]
  def change
    create_table :mailboxes do |t|
      t.string :name
      t.hstore :data

      t.timestamps
    end
  end
end

class CreateConversations < ActiveRecord::Migration[5.1]
  def change
    create_table :conversations do |t|
      t.references :booking, index: true
      t.timestamps
    end
  end
end

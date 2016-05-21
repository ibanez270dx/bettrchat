class AddRoomIdToMessages < ActiveRecord::Migration[5.0]
  def change
    change_table :messages do |t|
      t.integer :room_id, index: true
    end
  end
end

class AddKeyToRoom < ActiveRecord::Migration[5.0]
  def change
    change_table :rooms do |t|
      t.string :key, index: true
    end
  end
end

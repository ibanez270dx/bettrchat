class AddHostToRoom < ActiveRecord::Migration[5.0]
  def change
    change_table :rooms do |t|
      t.string :host
    end
  end
end

class AddRequestUriToRoom < ActiveRecord::Migration[5.0]
  def change
    change_table :rooms do |t|
      t.string :request_uri
    end
  end
end

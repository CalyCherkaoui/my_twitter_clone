class CreateGossips < ActiveRecord::Migration[6.0]
  def change
    create_table :gossips do |t|
      t.text :body

      t.timestamps
    end
  end
end

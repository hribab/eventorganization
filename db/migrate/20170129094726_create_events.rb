class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :message
      t.string :hostname
      t.datetime :timestamp
      t.belongs_to :organization, index: true

      t.timestamps
    end
  end
end

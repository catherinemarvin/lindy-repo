class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :link
      t.integer :start
      t.integer :end
      t.timestamps
    end
  end
end

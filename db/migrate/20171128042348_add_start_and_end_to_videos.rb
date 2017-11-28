class AddStartAndEndToVideos < ActiveRecord::Migration[5.1]
  def change
    add_column :videos, :start, :int
    add_column :videos, :end, :int
  end
end

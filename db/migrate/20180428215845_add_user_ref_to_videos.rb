class AddUserRefToVideos < ActiveRecord::Migration[5.1]
  def change
    add_reference :videos, :user, foreign_key: true
  end
end
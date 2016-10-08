class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :url
      t.string :user

      t.timestamps
    end
  end
end

class CreateVideo2tags < ActiveRecord::Migration[5.0]
  def change
    create_table :video2tags do |t|
      t.string :video_id
      t.string :tag_id

      t.timestamps
    end
  end
end

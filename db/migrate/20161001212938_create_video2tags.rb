class CreateVideo2tags < ActiveRecord::Migration[5.0]
  def change
    create_table :video2tags do |t|
      t.video_id :string
      t.tag_id :string

      t.timestamps
    end
  end
end

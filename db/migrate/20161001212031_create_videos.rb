class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.url :string
      t.user :string

      t.timestamps
    end
  end
end

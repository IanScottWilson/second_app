class CreateSvgposts < ActiveRecord::Migration
  def change
    create_table :svgposts do |t|
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end

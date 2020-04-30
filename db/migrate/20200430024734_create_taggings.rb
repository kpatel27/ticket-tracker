class CreateTaggings < ActiveRecord::Migration[6.0]
  def change
    create_table :taggings do |t|
      t.integer :ticket_id
      t.integer :tag_id

      t.timestamps
    end
  end
end

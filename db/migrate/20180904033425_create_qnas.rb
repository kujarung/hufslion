class CreateQnas < ActiveRecord::Migration
  def change
    create_table :qnas do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

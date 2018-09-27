class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.belongs_to :user, index: true, foreign_key: true
      t.string :file

      t.timestamps null: false
    end
  end
end

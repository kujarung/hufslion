class CreateQnareplies < ActiveRecord::Migration
  def change
    create_table :qnareplies do |t|
      t.string :title
      t.string :user_email
      t.text :content
      t.string :user_name
      t.belongs_to :qna, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

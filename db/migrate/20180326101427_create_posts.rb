class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :type
      t.references :author, foreign_key: true
      t.string :title
      t.text :body
      t.string :subject

      t.timestamps
    end
  end
end

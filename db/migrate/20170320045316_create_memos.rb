class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|

        t.string :title
        t.text :content
        t.boolean :favorite
        t.string :author
        t.string :memoId
        t.string :category
    
      t.timestamps null: false
    end
  end
end

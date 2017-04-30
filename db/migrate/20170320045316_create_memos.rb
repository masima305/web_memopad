class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|

        t.string :title
        t.text :content
        t.string :favorite
        t.string :author
        t.string :memoId
        t.string :category
        t.string :date
        t.string :image_url,  :default => ""
    
      t.timestamps null: false
    end
  end
end

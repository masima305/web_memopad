class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
        t.string :author
        t.string :category
      t.timestamps null: false
    end
  end
end

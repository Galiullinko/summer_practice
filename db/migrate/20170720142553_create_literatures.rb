class CreateLiteratures < ActiveRecord::Migration[5.0]
  def change
    create_table :literatures do |t|
      t.string :title, nil: false
      t.string :author
      t.string :link
      t.datetime :publishing_year

      t.references :work_programms, index: true
      t.timestamps
    end
  end
end

class CreateDisciplineContents < ActiveRecord::Migration[5.0]
  def change
    create_table :discipline_contents do |t|
      t.integer :position
      t.string :title, nil: false
      t.text :description
      t.integer :lecture_hours, default: 0
      t.integer :practice_hours, default: 0
      t.integer :other_hours, default: 0

      t.references :work_programms, index: true
      t.timestamps
    end
  end
end

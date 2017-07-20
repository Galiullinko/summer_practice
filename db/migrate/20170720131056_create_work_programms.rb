class CreateWorkProgramms < ActiveRecord::Migration[5.0]
  def change
    create_table :work_programms do |t|
      t.string :title, nil: false
      t.text :description, nil: false

      t.timestamps
    end
  end
end

class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.references :department, null: false, foreign_key: true
      t.integer :number
      t.integer :hours
      t.timestamps
    end
  end
end

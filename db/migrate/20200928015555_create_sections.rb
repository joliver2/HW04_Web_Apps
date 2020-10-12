class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.references :course, null: false, foreign_key: true
      t.references :professor, null: false, foreign_key: true
      t.integer :year
      t.references :semester, null: false, foreign_key: true
      t.timestamps
    end
  end
end

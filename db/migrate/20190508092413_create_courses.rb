class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :place
      t.string :map
      t.text :detail
      t.integer :distance
      t.date :record_date

      t.timestamps
    end
  end
end

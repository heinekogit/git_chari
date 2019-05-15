class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string :photo
      t.string :caption
      t.text :post

      t.timestamps
    end
  end
end

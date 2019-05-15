class AddColumnToReports < ActiveRecord::Migration[5.2]
  def change
      add_column :reports, :course_id, :integer
  end
end

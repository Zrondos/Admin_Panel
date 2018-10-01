class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.timestamp :start_date
      t.timestamp :end_date
      t.references :course
      

      t.timestamps
    end
  end
end

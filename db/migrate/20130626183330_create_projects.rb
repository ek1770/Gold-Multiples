class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :sector
      t.string :sub_sector
      t.date :date_created

      t.timestamps
    end
  end
end

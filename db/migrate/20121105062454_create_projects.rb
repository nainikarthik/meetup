class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.integer   :engineer_id, null: false

      t.timestamps
    end
  end
end

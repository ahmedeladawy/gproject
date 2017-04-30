class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :address
      t.string :overview
      t.integer :employees_number
      t.integer :tech_team_size
      t.string :website
      t.string :logo
      t.string :manager
      t.boolean :is_publish
      t.string :tech_stack
      t.string :twitter

      t.timestamps
    end
  end
end

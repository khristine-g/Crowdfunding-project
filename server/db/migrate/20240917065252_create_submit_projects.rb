class CreateSubmitProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :submit_projects do |t|
      t.string :name
      t.text :description
      t.string :contact_email

      t.timestamps
    end
  end
end

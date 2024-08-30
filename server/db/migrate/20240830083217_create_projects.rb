class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :image
      t.text :small_description
      t.text :detailed_description
      t.string :project_owner
      t.decimal :amount_raised
      t.decimal :goal_amount
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

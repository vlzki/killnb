class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.boolean :status
      t.string :target_name
      t.text :description
      t.string :address
      t.text :review
      t.date :deadline
      t.references :user, foreign_key: true
      t.references :asset, foreign_key: true, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end

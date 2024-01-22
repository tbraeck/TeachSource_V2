class CreateResources < ActiveRecord::Migration[7.1]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :description
      t.text :url
      t.integer :subject_id
      t.timestamps
    end
  end
end

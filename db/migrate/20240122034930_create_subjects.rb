class CreateSubjects < ActiveRecord::Migration[7.1]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :description
      t.string :url
      t.timestamps
    end
  end
end

class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.references    :list,      null: false, foreign_key: true
      t.string :title
      t.text :content
      t.datetime :start_time
      t.timestamps
    end
  end
end

class CreateTables < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :question_type
      t.string :status

      t.timestamps
    end

    create_table :options  do |t|
      t.string :option
      t.integer :question_id
      t.string :status

      t.timestamps
    end

    create_table :responses do |t|
      t.integer :question_id
      t.integer :option_id

      t.timestamps
    end
  end
end

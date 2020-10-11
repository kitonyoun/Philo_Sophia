class CreateQuestionnaires < ActiveRecord::Migration[5.2]
  def change
    create_table :questionnaires do |t|
      t.integer :request_id
      t.integer :gender
      t.integer :age

      t.timestamps
    end
  end
end

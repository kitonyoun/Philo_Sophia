class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.integer :user_id
      t.integer :questionnaire_id
      t.integer :aggregate_result
      t.integer :respondent

      t.timestamps
    end
  end
end

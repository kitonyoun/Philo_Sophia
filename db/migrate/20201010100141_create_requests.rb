class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.string :request_title
      t.text :question_box
      t.integer :answer_box_type, default: 0
      t.date :cutoff_date

      t.timestamps
    end
  end
end

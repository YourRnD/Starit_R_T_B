class CreateFeedbackDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :feedback_details do |t|
      t.integer :feedback_id
      t.integer :question_id
      t.string :answer_type
      t.string :answer
      t.binary :answer_blob

      t.timestamps
    end
  end
end

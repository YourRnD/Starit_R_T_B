class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.integer :form_id
      t.integer :question_type_id
      t.string :text
      t.string :description

      t.timestamps
    end
  end
end

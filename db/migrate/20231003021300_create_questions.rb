class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :question_content
      t.string :question_person
      t.timestamps
    end
  end
end

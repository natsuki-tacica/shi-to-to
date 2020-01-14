class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text  :question,                  null: false #質問
      t.timestamps
    end
  end
end

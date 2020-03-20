class CreateAnsers < ActiveRecord::Migration[5.2]
  def change
    create_table :ansers do |t|
      t.string :user_id
      t.string :question_id
      t.text  :text, null: false, limit: 65535 #答え
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end

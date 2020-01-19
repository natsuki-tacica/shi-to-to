class CreateAnsers < ActiveRecord::Migration[5.2]
  def change
    create_table :ansers do |t|
      t.integer  :user_id,        limit: 4
      t.integer  :question_id,    limit: 4
      t.text  :text, null: false, limit: 65535 #答え
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end

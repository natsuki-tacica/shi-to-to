class CreateAnsers < ActiveRecord::Migration[5.2]
  def change
    create_table :ansers do |t|
      t.references :user, foreign_key: true
      t.references :question, foreign_key: true
      t.text  :text, null: false, limit: 65535 #答え
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end

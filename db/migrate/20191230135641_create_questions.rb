class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.references :group, foreign_key: true
      t.string   :text,       limit: 255
    end
  end
end

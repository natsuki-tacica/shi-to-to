class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer  :group_id, limit: 4
      t.string   :text,       limit: 255
    end
  end
end

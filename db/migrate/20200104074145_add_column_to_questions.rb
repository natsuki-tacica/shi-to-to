class AddColumnToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :group, foreign_key: true
  end
end

class RemoveD < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :tasks, :todo_lists
  end
end

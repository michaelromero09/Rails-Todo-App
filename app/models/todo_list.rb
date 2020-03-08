class TodoList < ApplicationRecord
  has_many :todo_items, dependent: :destroy

  def delete_completed_tasks
    filtered_items = self.todo_items.each do |todo_item|
      if todo_item.completed?
        todo_item.destroy
      end
    end
  end
end

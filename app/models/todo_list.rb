class TodoList < ApplicationRecord
  has_many :todo_items, dependent: :destroy

  def delete_completed_tasks
    puts "Got here"
    filtered_items = self.todo_items.each do |todo_item|
      puts "Butter #{todo_item.inspect} #{todo_item.completed?}"
      if todo_item.completed?
        todo_item.destroy
      end
    end
  end
end

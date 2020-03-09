RSpec.describe TodoList do
  describe "delete_completed_tasks" do
    it "does not delete uncompleted tasks" do
      todo_list = TodoList.create
      todo_list.todo_items.create({ content: "1st item" })
      todo_list.todo_items.create({ content: "2nd item", completed_at: Time.now })
      todo_list.todo_items.create({ content: "3rd item" })
      todo_list.todo_items.create({ content: "4th item", completed_at: Time.now })
      todo_list.delete_completed_tasks
      puts TodoList.all[0].todo_items
      expect(TodoList.find(todo_list.id).todo_items.length).to eq(2)
    end
  end
end
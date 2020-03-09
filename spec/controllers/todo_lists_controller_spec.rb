RSpec.describe TodoListsController do
  describe "GET index" do
    it "assigns @todo_lists" do
      todo_list = TodoList.create
      get :index
      expect(assigns(:todo_lists)).to eq([todo_list])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "POST create" do
    it "creates @todo_list" do
      todo_list = TodoList.create({title: 'List Title', description: 'List Description'})
      post :create, params: { todo_list: { title: 'List Title', description: 'List Description'}}
      expect(response.content_type). to eq "text/html; charset=utf-8"
      expect(assigns(:todo_list).title).to eq(todo_list.title)
      expect(assigns(:todo_list).description).to eq(todo_list.description)
    end
  end
end
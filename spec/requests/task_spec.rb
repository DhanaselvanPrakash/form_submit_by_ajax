require 'rails_helper'

RSpec.describe TodoController, type: :controller do
  describe "GET /index" do
    it "root to the index" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe "GET /create_todo" do
    it "assign the todo" do
      todo = Todo.new
      expect(todo).to be_a_new(Todo)
    end
  end
end

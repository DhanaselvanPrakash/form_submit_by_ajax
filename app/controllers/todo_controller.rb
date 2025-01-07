class TodoController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @todos = Todo.all
  end

  def show
  end

  def new
    @todo = Todo.new
  end

  def todo
    @todo = Todo.find(params[:id])
  end

  def create
    @todo = Todo.new(title: params[:title], status: params[:status], deadline: params[:deadline])
    respond_to do |format|
      if @todo.save
        format.js
        format.html { redirect_to root_path, notice: "User added Successfully" }
      else
        format.js
        format.html { redirect_to create_todo_path, notice: "All Fields are require Successfully" }
      end
    end
  end

  def delete
    respond_to do |format|
      id = params[:id]
      Todo.destroy_by(id: id)
      format.js
      format.html { redirect_to root_path, notice: "Task delete Successfully" }
    end
  end
end

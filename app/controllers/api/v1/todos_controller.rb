class Api::V1::TodosController < ApplicationController
  def index
    todos = Todo.order(updated_at: :desc)
    render json: todos
  end
  
  def show
    todo = Todo.find(params[:id])
    render json: todo
  end
  
  def create
    todo = Todo.new(todo_params)
    if todo.save
      render json: todo
    else
      render json: todo.errors, status: 422
    end
  end
end
class TodosController < ApplicationController
  def index
    todos = Todo.all
    render json: { todos: todos.as_json }
  end

  def create
    todo = Todo.new(todo_params)

    if todo.save
      render json: { todo: todo }, status: :created
    else
      render_errors(
        status: :unprocessable_entity,
        errors: todo.errors
      )
    end
  end

  private

  def todo_params
    params.permit(:title)
  end
end

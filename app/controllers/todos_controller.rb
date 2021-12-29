require "sinatra/base"
require "sinatra/namespace"

class TodosController < ApplicationController
    register Sinatra::Namespace

    namespace "/api" do
        
        before do
            content_type "application/json"
        end

        def todo
            Todo.find_by(id: params[:id])
        end

        def halt_with_error
            halt(404, {message: "Todo Not Found!"}.to_json)
        end

        get "/todo/all" do
            halt(200, Todo.all.to_json)
        end

        get "/todo/:id" do
            @record = todo
            halt_with_error unless @record
            @record.to_json
        end

        patch "/todo/:id" do
            @record = todo 
            halt_with_error unless @record
            Todo.update(params[:id], params)
            @record.to_json
        end

        delete "/todo/:id" do
            @record = todo
            halt_with_error unless @record
            @record.destroy
            halt(204, @record.to_json)
        end

        post "/todo/new" do
            @record = Todo.new(title: params[:title], content: params[:content])
            if @record.save
                halt(201, @record.to_json)
            else
                halt(202, @record.errors.messages.to_json)
            end
        end

    end

end
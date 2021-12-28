class CreateTodos < ActiveRecord::Migration[6.1]
    def up
        create_table :todos do |t|
            t.string :title, index: true
            t.text :content
            t.boolean :status, null: false, default: true, index: true
            t.timestamps
            t.references :user, foreign_key: true
            t.references :category, foreign_key: true
        end
    end

    def def down 
        drop_table :todos
    end
end

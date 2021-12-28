class CreateUsers < ActiveRecord::Migration[6.1]
    def up
        create_table :users do |t|
            t.string :name
            t.string :phone_number
            t.string :email
            t.string :user_name
            t.string :password
            t.datetime :deleted_at
            t.timestamps
        end
    end

    def def down 
        drop_table :users
    end
end

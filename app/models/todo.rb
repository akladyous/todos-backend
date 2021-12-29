class Todo < ActiveRecord::Base
    # include TodoList
    belongs_to :user
    belongs_to :category

    has_one :status, dependent: :destroy

    validates :title, presence: true, on: [:create, :update]
    validates :content, presence: true, on: [:create, :update]
end

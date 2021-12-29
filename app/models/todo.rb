class Todo < ActiveRecord::Base
    # include TodoList
    belongs_to :user
    belongs_to :category
    
    # has_many :statuses
    has_one :status, dependent: :destroy


end

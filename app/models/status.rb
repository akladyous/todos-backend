class Status < ActiveRecord::Base
    belongs_to :todo

    scope :lists, -> { select(:status).pluck(:status) }
    # default_scope { lists }
    
    status_list = ["done", "In Progress", "Hold"]
    validates :status, inclusion: { in: status_list, message: "Invalid Status. Select from #{status_list}" }
end
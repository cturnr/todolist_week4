class User < ActiveRecord::Base
	has_secure_password
	has_one :profile, dependent: :destroy
	has_many :todo_lists, dependent: :destroy
	has_many :todo_items, through: :todo_lists, source: :todo_items

	validates :username, presence: true


# determines the number of TodoItems the User has completed using an aggregate query function
# (Hint: You are looking for the count of TodoItems associated with a specific User where
# completed:true)

def get_completed_count
  todo_items.where(completed: true).count
end

end


class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :js_framework
end

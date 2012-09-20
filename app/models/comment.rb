class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :body, :commenter
  # add validation to make sure this is not 0
end

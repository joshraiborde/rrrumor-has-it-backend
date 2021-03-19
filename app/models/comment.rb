class Comment < ApplicationRecord
  belongs_to :post
  # a comment cannot exsist without a post
end

class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :comments
end

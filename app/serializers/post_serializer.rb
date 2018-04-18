class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :author, :body
end

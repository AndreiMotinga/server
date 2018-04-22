class Api::PostsController < ApiController
  # before_action :set_post, only: [:show, :update, :destroy]

  # GET /posts
  def index
    posts = Post.all
    serialized = PostSerializer.new(posts).serialized_json

    render json: serialized
  end

  # GET /posts/1
  def show
    post = Post.find(params[:id])
    serialized = PostSerializer.new(post).serialized_json
    render json: serialized
  end

  # # POST /posts
  # def create
  #   @post = Post.new(post_params)
  #
  #   if @post.save
  #     render json: @post, status: :created, location: @post
  #   else
  #     render json: @post.errors, status: :unprocessable_entity
  #   end
  # end
  #
  # # PATCH/PUT /posts/1
  # def update
  #   if @post.update(post_params)
  #     render json: @post
  #   else
  #     render json: @post.errors, status: :unprocessable_entity
  #   end
  # end
  #
  # # DELETE /posts/1
  # def destroy
  #   @post.destroy
  # end
  #
  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_post
  #     @post = Post.find(params[:id])
  #   end
  #
  #   # Only allow a trusted parameter "white list" through.
  #   def post_params
  #     params.require(:post).permit(:title, :author, :body)
  #   end
end

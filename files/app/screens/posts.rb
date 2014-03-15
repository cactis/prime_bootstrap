class PostsScreen < ApplicationScreen
  title "Posts"

  # open_screen "posts#index"
  def index
    set_title "Posts"
    set_navigation_right_button 'New' do
      open_screen "posts#new"
    end
    set_section :posts_index_table
  end

  # open_screen "posts#show"
  def show
    @model = params[:model]
    set_title "Show Post"
    set_navigation_back_button 'Back'
    set_navigation_right_button 'Edit' do
      open_screen "posts#edit", params: { model: @model }
    end
    set_section :posts_show, model: @model
  end

  # open_screen "posts#edit"
  def edit
    @model = params[:model]
    set_title "Edit Post"
    set_navigation_back_button 'Cancel'
    set_section :posts_form, model: @model
  end

  # open_screen "posts#new"
  def new
    @model = Post.new
    set_title "New Post"
    set_navigation_back_button 'Cancel'
    set_section :posts_form, model: @model
  end

  def on_return
    if action?(:index) || action?(:show)
      refresh
    end
  end
end
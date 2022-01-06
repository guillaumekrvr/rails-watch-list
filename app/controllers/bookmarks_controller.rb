class BookmarksController < ApplicationController

def index
  @bookmarks = Bookmark.all
end

def show
  @bookmarks = Bookmark.find(params[:id])
end

def new
  @bookmarks = Bookmark.new
end

def create
  @bookmarks = Bookmark.new(params[:bookmark])
  @bookmark.save

  redirect_to bookmarks_path(@bookmark)
end

def destroy
  @bookmarks = Bookmark.destroy
  @bookmarks.save

  redirect_to bookmarks_path(@bookmark)

end

  private

def bookmark_params
  params.require(:bookmark).permit(:comment)
end

end

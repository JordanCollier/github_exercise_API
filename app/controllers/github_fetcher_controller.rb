class GithubFetcherController < ApplicationController

  def index
    @user = GithubFetcher.new

    if params[:github_user].present?
      @found_repos = @user.find_repos(params[:github_user])

    end
  end

end

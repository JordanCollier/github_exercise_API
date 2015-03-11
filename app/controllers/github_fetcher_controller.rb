class GithubFetcherController < ApplicationController

  def index
    @user = GithubFetcher.new

    if params[:github_user].present?
      @found_repos = @user.find_repos(params[:github_user])
    end

    if params[:github_user].present?
      @found_user = @user.find_stats(params[:github_user])
    end
  end

end

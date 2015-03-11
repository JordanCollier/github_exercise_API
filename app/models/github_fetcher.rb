class GithubFetcher

  def initialize
    @client = Octokit::Client.new(:access_token => Rails.application.secrets.github_access_token)
  end

  def find_repos(github_user)
    @client.repositories(github_user)
  end

  def find_stats(github_user)
    @client.user(github_user)
  end

end

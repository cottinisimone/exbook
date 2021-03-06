defmodule Issues.GithubIssues do
  @user_agent [{"User-agent", "Elixir dave@pragprog.com"}]

  # use a module attribute to fetch the value at compile time
  @github_url Application.get_env(:issues, :github_url)

  def fetch(user, project) do
    issues_url(user, project)
    |> HTTPoison.get(@user_agent)
    |> handle_response
  end

  def issues_url(user, project) do
    "#{@github_url}/repos/#{user}/#{project}/issues"
  end

  def handle_response({:ok, response: %{status_code: 200, body: body}}),
    do: {:ok, :jsx.decode(body)}

  # maybe log status code and message
  def handle_response({:ok, %{status_code: ___, body: body}}), do: {:ok, :jsx.decode(body)}
  def handle_response({:error, %{status_code: ___, body: body}}), do: {:error, :jsx.decode(body)}
end

defmodule MyAppWeb.PageLive do
  use MyAppWeb, :live_view

  def render(assigns) do
    ~H"""
    <.header>
      MyAppWeb.PageLive
    </.header>
    """
  end
end

defmodule MyAppWeb.StickyLive do
  use MyAppWeb, :live_view

  def render(assigns) do
    ~H"""
    <.header>
      MyAppWeb.StickyLive
    </.header>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket, layout: false}
  end
end

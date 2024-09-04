defmodule MyAppWeb.UserAuth do
  require Logger

  def on_mount(:load_expensive_session_data, params, _session, socket) do
    Logger.warning(
      "Expensive session data loaded! view:#{inspect(socket.view)} params:#{inspect(params)}"
    )

    {:cont, socket}
  end
end

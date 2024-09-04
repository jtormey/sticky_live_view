# MyApp

## Issue description

When rendering a sticky LiveView, all `:on_mount` functions defined by the session are called
on socket connect. The calls to these functions include the page params, not `:not_mounted_at_router`.

[Commit](https://github.com/jtormey/sticky_live_view/commit/03b20257dbf91390d8f29ceaa5575acbc08b0acb).

Logs (see `[warning]` outputs):

```
[info] GET /page
[debug] Processing with MyAppWeb.PageLive.Elixir.MyAppWeb.PageLive/2
  Parameters: %{"param" => "true"}
  Pipelines: [:browser]
[warning] Expensive session data loaded! view:MyAppWeb.PageLive params:%{"param" => "true"}
[info] Sent 200 in 1ms
[info] CONNECTED TO Phoenix.LiveView.Socket in 36µs
  Transport: :websocket
  Serializer: Phoenix.Socket.V2.JSONSerializer
  Parameters: %{"_csrf_token" => "AX1OPhASGzFzWVEVIWhlNyUCKS8-CzMDL-7yQfjaFmfxp12SFADWprP0", "_live_referer" => "undefined", "_mounts" => "0", "_track_static" => %{"0" => "http://localhost:4000/assets/app.css", "1" => "http://localhost:4000/assets/app.js"}, "vsn" => "2.0.0"}
[debug] MOUNT MyAppWeb.PageLive
  Parameters: %{"param" => "true"}
  Session: %{"_csrf_token" => "MPyGAtqP547mQYWdcCmxNyc3"}
[warning] Expensive session data loaded! view:MyAppWeb.PageLive params:%{"param" => "true"}
[debug] Replied in 132µs
[debug] MOUNT MyAppWeb.StickyLive
  Parameters: %{"param" => "true"}
  Session: %{"_csrf_token" => "MPyGAtqP547mQYWdcCmxNyc3"}
[warning] Expensive session data loaded! view:MyAppWeb.StickyLive params:%{"param" => "true"}
[debug] Replied in 111µs
iex(1)> 
```

## Setup

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

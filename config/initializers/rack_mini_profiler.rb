# rack-mini-profiler gem https://github.com/MiniProfiler/rack-mini-profiler

if Rails.env.development?
  # リクエストごとに展開表示させる
  Rack::MiniProfiler.config.collapse_results = false

  # ページの左下に表示
  Rack::MiniProfiler.config.position = "bottom-left"

  # SQLの実行回数を併記
  Rack::MiniProfiler.config.show_total_sql_count = true
end

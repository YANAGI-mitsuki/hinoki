Rails.application.config.generators do |g|
    g.stylesheets false # 新しいコントローラや他の生成物を作成する際に、スタイルシート（CSSファイル）が自動的に生成されないようにする
    g.javascripts false # 新しいコントローラや他の生成物を作成する際に、JavaScriptファイルが自動的に生成されないようにする
    g.helper false # 新しいコントローラを作成する際に、対応するヘルパーモジュール（app/helpers 内のファイル）が自動的に生成されないようにする
    g.skip_routes true # 新しいリソースやコントローラを生成する際に、config/routes.rb に自動的にルートが追加されないようにする
end
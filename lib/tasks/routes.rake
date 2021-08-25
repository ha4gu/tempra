# Rails 6.1でroutes Rakeタスクが削除されたことによって発生するannotate gemでのエラーを回避する
# 参考: https://github.com/ctran/annotate_models/issues/845

task routes: :environment do
  puts `bundle exec rails routes`
end

# https://github.com/rweng/pry-rails#custom-rails-prompt
Pry.config.prompt = Pry::Prompt[:rails] if Pry::Prompt[:rails]

# https://github.com/deivid-rodriguez/pry-byebug#matching-byebug-behaviour
if defined?(PryByebug)
  Pry.commands.alias_command "c", "continue"
  Pry.commands.alias_command "s", "step"
  Pry.commands.alias_command "n", "next"
  Pry.commands.alias_command "f", "finish"
end

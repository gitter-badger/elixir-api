# References

## Elixir & Erlang OTP
### Supervisor Restart Strategies

- one_for_one
  If a child crashes, restart it

- one_for_all 
  If any child crashes, restart them all

- rest_for_one
  If a child crashes, it and all children *started after it* are restarted

- simple_one_for_one
  Like one_for_one, but designed for starting children dynamically

## Packages We Use
- Poison: https://github.com/devinus/poison
- Heroku Build Pack: https://github.com/HashNuke/heroku-buildpack-elixir
- Ecto ORM: https://github.com/elixir-lang/ecto
- HTTPPotion: https://github.com/myfreeweb/httpotion

## Style Guide
- https://github.com/niftyn8/elixir_style_guide
- https://github.com/elixir-web/weber

## To Research
- New JSON package: https://github.com/cblage/elixir-json
- New ORM: https://github.com/chrismccord/atlas
- New testing framework: https://github.com/josephwilk/amrita

## Examples
- Chat app: https://github.com/HashNuke/mogo-chat
, of the attributes we want which in this case
  is show_ids.

## Directories
- List of all awesome Elixir packages: https://github.com/h4cc/awesome-elixir#json

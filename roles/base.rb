name "base"
run_list %w(
  recipe[base]
  recipe[build-essential]
)

default_attributes(
  "base" => {
    "user" => {
      "name"    => "deployer",
    },
    "www_dir" => "/var/www",
  },
)

override_attributes(
  "xbuild" => {
    "include_recipes" => %w{ git build-essential },
  },
)

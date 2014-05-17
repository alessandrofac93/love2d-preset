love = {}
require "src/conf"
conf = {}
conf.modules = {}
conf.screen = {}
love.conf(conf)

if arg[1] == "ai" then
  print(conf.author .. "-" .. conf.identity)
else
  print(conf[arg[1]])
end

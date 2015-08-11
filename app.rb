require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/to_do_list")

get("/") do
  @tasks = ToDo.all()
  erb(:index)
end

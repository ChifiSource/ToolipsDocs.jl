module ToolipsDocs
using Toolips

fourofour = route("404") do c
    write!(c, p("404message", text = "404, not found!"))
end

home = route("/") do c
    write!(c, File("public/index.html"))
end

projects = route("/projects/") do c
    write!(c, File("public/projects/index.html"))
end

servables = route("/interface/") do c
    write!(c, File("public/interface/index.html"))
end

core = route("/core/") do c
    write!(c, File("public/core/index.html"))
end

sess = route("/toolips_session/") do c
    write!(c, File("public/toolips_session/index.html"))
end

createss = route("/creating_servables/") do c
    write!(c, File("public/creating_servables/index.html"))
end

devapi = route("/developer_api/") do c
    write!(c, File("public/developer_api/index.html"))
end

search = route("/search/") do c
    write!(c, File("public/search/index.html"))
end
"""
start(IP::String, PORT::Integer, extensions::Vector{Any}) -> ::Toolips.WebServer
--------------------
The start function comprises routes into a Vector{Route} and then constructs
    a ServerTemplate before starting and returning the WebServer.
"""
function start(IP::String = "127.0.0.1", PORT::Integer = 8000,
    extensions::Vector = [Logger()])
    rs = routes(fourofour, home, search, devapi, createss, sess, core, servables,
    projects, home)
    server = ServerTemplate(IP, PORT, rs, extensions = extensions)
    server.start()
end

end # - module

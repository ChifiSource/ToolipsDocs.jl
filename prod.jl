using Pkg; Pkg.activate(".")
using Toolips
using ToolipsDocs

IP = "127.0.0.1"
PORT = 8000
extensions = [Logger(), Files("public")]
ToolipsDocsServer = ToolipsDocs.start(IP, PORT, extensions)

using Pkg; Pkg.activate(".")
using Toolips
using ToolipsSession
using ToolipsDocs

IP = "127.0.0.1"
PORT = 8000
extensions = [Logger(), Files("public"), Session()]
ToolipsDocsServer = ToolipsDocs.start(IP, PORT, extensions)

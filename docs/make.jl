push!(LOAD_PATH,"../src/")

using Documenter
using DocumenterTools
using TensorNetworks

makedocs(
    format=     Documenter.HTML(
                    prettyurls= !("local" in ARGS),
                    canonical=  "https://quantum-many-body.github.io/TensorNetworks.jl/latest/",
                    assets=     ["assets/favicon.ico"],
                    analytics=  "UA-89508993-1",
                    ),
    clean=      false,
    sitename=   "TensorNetworks.jl",
    pages=      [
                "Home"      =>  "index.md",
                ]
)

deploydocs(
    repo=       "github.com/Quantum-Many-Body/TensorNetworks.jl.git",
    target=     "build",
    deps=       nothing,
    make=       nothing,
)

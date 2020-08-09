using RoughSurface
using Documenter

makedocs(;
    modules=[RoughSurface],
    authors="nil-is-lin",
    repo="https://github.com/nil-is-lin/RoughSurface.jl/blob/{commit}{path}#L{line}",
    sitename="RoughSurface.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://nil-is-lin.github.io/RoughSurface.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/nil-is-lin/RoughSurface.jl",
)

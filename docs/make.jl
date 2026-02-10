using NestedPermutedDimsArrays: NestedPermutedDimsArrays
using Documenter: Documenter, DocMeta, deploydocs, makedocs

DocMeta.setdocmeta!(
    NestedPermutedDimsArrays, :DocTestSetup, :(using NestedPermutedDimsArrays); recursive = true
)

include("make_index.jl")

makedocs(;
    modules = [NestedPermutedDimsArrays],
    authors = "ITensor developers <support@itensor.org> and contributors",
    sitename = "NestedPermutedDimsArrays.jl",
    format = Documenter.HTML(;
        canonical = "https://itensor.github.io/NestedPermutedDimsArrays.jl",
        edit_link = "main",
        assets = ["assets/favicon.ico", "assets/extras.css"],
    ),
    pages = ["Home" => "index.md", "Reference" => "reference.md"],
)

deploydocs(;
    repo = "github.com/ITensor/NestedPermutedDimsArrays.jl", devbranch = "main", push_preview = true
)

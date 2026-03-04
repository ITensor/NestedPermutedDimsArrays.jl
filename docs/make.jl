using Documenter: Documenter, DocMeta, deploydocs, makedocs
using ITensorFormatter: ITensorFormatter
using NestedPermutedDimsArrays: NestedPermutedDimsArrays

DocMeta.setdocmeta!(
    NestedPermutedDimsArrays, :DocTestSetup, :(using NestedPermutedDimsArrays);
    recursive = true
)

ITensorFormatter.make_index!(pkgdir(NestedPermutedDimsArrays))

makedocs(;
    modules = [NestedPermutedDimsArrays],
    authors = "ITensor developers <support@itensor.org> and contributors",
    sitename = "NestedPermutedDimsArrays.jl",
    format = Documenter.HTML(;
        canonical = "https://itensor.github.io/NestedPermutedDimsArrays.jl",
        edit_link = "main",
        assets = ["assets/favicon.ico", "assets/extras.css"]
    ),
    pages = ["Home" => "index.md", "Reference" => "reference.md"]
)

deploydocs(;
    repo = "github.com/ITensor/NestedPermutedDimsArrays.jl", devbranch = "main",
    push_preview = true
)

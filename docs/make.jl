using NestedPermutedDimsArrays: NestedPermutedDimsArrays
using Documenter: Documenter, DocMeta, deploydocs, makedocs

DocMeta.setdocmeta!(
  NestedPermutedDimsArrays, :DocTestSetup, :(using NestedPermutedDimsArrays); recursive=true
)

include("make_index.jl")

makedocs(;
  modules=[NestedPermutedDimsArrays],
  authors="ITensor developers <support@itensor.org> and contributors",
  sitename="NestedPermutedDimsArrays.jl",
  format=Documenter.HTML(;
    canonical="https://ITensor.github.io/NestedPermutedDimsArrays.jl",
    edit_link="main",
    assets=String[],
  ),
  pages=["Home" => "index.md"],
)

deploydocs(;
  repo="github.com/ITensor/NestedPermutedDimsArrays.jl", devbranch="main", push_preview=true
)

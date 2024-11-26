using Literate: Literate
using NestedPermutedDimsArrays: NestedPermutedDimsArrays

Literate.markdown(
  joinpath(pkgdir(NestedPermutedDimsArrays), "examples", "README.jl"),
  joinpath(pkgdir(NestedPermutedDimsArrays), "docs", "src");
  flavor=Literate.DocumenterFlavor(),
  name="index",
)

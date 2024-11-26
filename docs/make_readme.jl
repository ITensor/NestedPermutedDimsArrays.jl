using Literate: Literate
using NestedPermutedDimsArrays: NestedPermutedDimsArrays

Literate.markdown(
  joinpath(pkgdir(NestedPermutedDimsArrays), "examples", "README.jl"),
  joinpath(pkgdir(NestedPermutedDimsArrays));
  flavor=Literate.CommonMarkFlavor(),
  name="README",
)

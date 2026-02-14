using Aqua: Aqua
using NestedPermutedDimsArrays: NestedPermutedDimsArrays
using Test: @testset

@testset "Code quality (Aqua.jl)" begin
    Aqua.test_all(NestedPermutedDimsArrays)
end

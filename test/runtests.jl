using Nuclides
using Test

@testset "Nuclides" begin
    # defination and info
    C12 = Nuclide(6, 12)
    @test C12 |> atomic_number === 6
    @test C12 |> mass_number === 12
    @test C12 |> metastable_state === 0
    @test C12 |> neutron_number === 6

    # subscript
    @test "0123456789" |> super === "⁰¹²³⁴⁵⁶⁷⁸⁹"
    @test "0123456789" |> sub === "₀₁₂₃₄₅₆₇₈₉"
    @test "⁰¹²³⁴⁵⁶⁷⁸⁹₀₁₂₃₄₅₆₇₈₉" |> recover === "01234567890123456789"
end

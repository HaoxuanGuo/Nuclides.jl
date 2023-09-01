using Nuclides
using Test

@testset "Nuclides" begin
    # defination and info
    C12 = Nuclide(6, 12)
    @test C12 |> atomic_number === 6
    @test C12 |> mass_number === 12
    @test C12 |> metastable_state === 0
    @test C12 |> neutron_number === 6

    # element symbol
    @test 0 |> element_symbol === "n"
    @test 6 |> element_symbol === "C"
    @test 999 |> element_symbol === "X"
    @test "C" |> zahl === 6

    # subscript
    @test "0123456789" |> super === "⁰¹²³⁴⁵⁶⁷⁸⁹"
    @test "0123456789" |> sub === "₀₁₂₃₄₅₆₇₈₉"
    @test "⁰¹²³⁴⁵⁶⁷⁸⁹₀₁₂₃₄₅₆₇₈₉" |> recover === "01234567890123456789"

    # parse
    @test nuclide"Fe-56" === Nuclide(26, 56)
    @test nuclide"⁵⁶Fe" === Nuclide(26, 56)

    # show
    buff = IOBuffer()
    show(buff, C12)
    @test String(take!(buff)) === "nuclide\"¹²C\""
    @test symbol_inline(Nuclide(6, 12, 0)) === "C-12"
    @test symbol_inline(Nuclide(6, 12, 1)) === "C-12m"
    @test symbol_inline(Nuclide(6, 12, 2)) === "C-12m2"
end

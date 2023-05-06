function number_suffix(nuclide::Nuclide)
    metastable_suffix = @match nuclide |> metastable_state begin
        0 => ""
        1 => "m"
        m => "m$m"
    end
    return "$(nuclide |> mass_number)" * metastable_suffix
end

function symbol_full(nuclide::Nuclide)
    return super(number_suffix(nuclide)) * element_symbol(atomic_number(nuclide))
end

function symbol_inline(nuclide::Nuclide)
    return element_symbol(atomic_number(nuclide)) * "-" * number_suffix(nuclide)
end

const symbol = symbol_full

Base.show(io::IO, nuclide::Nuclide) = print(io, "nuclide\"", symbol(nuclide), "\"")

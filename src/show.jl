function symbol(nuclide::Nuclide; format=:full)
    metastable_suffix = ""
    if metastable_state(nuclide) == 1
        metastable_suffix = "m"
    elseif metastable_state(nuclide) == 2
        metastable_suffix = "m2"
    end
    number_suffix = "$(nuclide |> mass_number)" * metastable_suffix
    if format === :full
        super(number_suffix) * element_symbol(atomic_number(nuclide))
    elseif format === :inline
        element_symbol(atomic_number(nuclide)) * "-" * number_suffix
    elseif format === :plain
        element_symbol(atomic_number(nuclide)) *
        @sprintf("%03d", mass_number(nuclide)) *
        metastable_suffix
    else
        error("invalid format")
    end
end

Base.show(io::IO, nuclide::Nuclide) = print(io, "nuclide\"", symbol(nuclide), "\"")

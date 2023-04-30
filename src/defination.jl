"""
    Nuclide

A way of expressing nucludes. The z, a, and m are the proton number,
mass number, and metastable state respectively.
"""
struct Nuclide
    z::Int
    a::Int
    m::Int
end

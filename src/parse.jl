function Nuclide(name::String)
    if occursin('-', name)
        symbol, zahl_ = split(name, '-')
    else
        zahl_ = recover(name)
        symbol = name[collect(eachindex(name))[length(zahl_) + 1]:end]
    end
    return Nuclide(zahl(symbol), parse(Int, zahl_))
end

Base.parse(::Type{N}, desc::AbstractString) where {N<:Nuclide} = Nuclide(String(desc))

macro nuclide_str(ex)
    isa(ex, AbstractString) || error("nuclide requires literal strings")
    nuclide = parse(Nuclide, ex)
    return :($nuclide)
end

"""
    atomic_number(n::Nuclide)

Returns the atomic number of the nuclide.
"""
atomic_number(n::Nuclide) = n.z

"""
    mass_number(n::Nuclide)

Returns the mass number of the nuclide.
"""
mass_number(n::Nuclide) = n.a

"""
    metastable_state(n::Nuclide)

Returns the metastable state of the nuclide.
"""
metastable_state(n::Nuclide) = n.m

"""
    neutron_number(n::Nuclide)

Returns the neutron number of the nuclide.
"""
neutron_number(n::Nuclide) = n.a - n.z

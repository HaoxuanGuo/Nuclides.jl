# Nuclides.jl

*A presentation for nuclides in Julia.*

## Usage

```@repl
using Nuclides

# Define a nuclide by a nuclide string
C12 = nuclide"C-12"

# It presents as a beautiful upperscript format
C12

# Copy and paste this supperscript format is also compatible
C12 = nuclide"¹²C"

# get nuclide info by functions
C12 |> atomic_number
C12 |> mass_number
C12 |> metastable_state
C12 |> neutron_number
```

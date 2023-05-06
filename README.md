# Nuclides.jl

*A presentation for nuclides in Julia.*

![codecov workflow][codecov-workflow-img]
[![codecov][codecov-img]][codecov-url]

[codecov-workflow-img]: https://github.com/HaoxuanGuo/Nuclides.jl/actions/workflows/codecov.yml/badge.svg

[codecov-img]: https://codecov.io/gh/HaoxuanGuo/Nuclides.jl/branch/main/graph/badge.svg?token=MsF281T0ln
[codecov-url]: https://codecov.io/gh/HaoxuanGuo/Nuclides.jl

## Usage

```julia
using Nuclides

# Define a nuclide by a nuclide string
C12 = nuclide"C-12"

# It presents as a beautiful upperscript format
C12 # nuclide"¹²C"

# Copy and paste this supperscript format is also compatible
C12 = nuclide"¹²C"

# get nuclide info by functions
C12 |> atomic_number # 6
C12 |> mass_number # 12
C12 |> metastable_state # 0
C12 |> neutron_number # 6
```

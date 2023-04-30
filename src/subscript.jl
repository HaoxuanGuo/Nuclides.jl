super_chars = ['⁰', '¹', '²', '³', '⁴', '⁵', '⁶', '⁷', '⁸', '⁹']
sub_chars = ['₀', '₁', '₂', '₃', '₄', '₅', '₆', '₇', '₈', '₉']

"""
    super(s::String)

Returns the string with all digits replaced by their super-script
"""
function super(s)
    res = ""
    for c in s
        if c >= '0' && c <= '9'
            res *= super_chars[c - '0' + 1]
        end
    end
    return res
end

"""
    sub(s::String)

Returns the string with all digits replaced by their sub-script
"""
function sub(s)
    res = ""
    for c in s
        if c >= '0' && c <= '9'
            res *= sub_chars[c - '0' + 1]
        end
    end
    return res
end

"""
    recover(s::String)

Returns the string with all super-script and sub-script digits
"""
function recover(s::String)
    res = ""
    for c in s
        for i in eachindex(super_chars)
            if c == super_chars[i] || c == sub_chars[i]
                res *= '0' + i - 1
            end
        end
    end
    return res
end

module Properties

include("../helpers/adts.jl")

using ..Definitions

export CarrierProperties
export SpreadingCodeProperties, ChipSource, DataSource
export SignalLevelEncoding, DigitalModulation, Modulator
export BasebandProperties, BasebandSignal
export SignalProperties
export CodeStorage

include("carrier.jl")
include("datasource.jl")
include("baseband.jl")


struct SignalProperties
    carrier::CarrierProperties
    baseband::BasebandProperties.Type
end


struct CodeStorage
    code_length::Int64
    no_codes::Int64
    memory_storage::Memory{Int8}

    function CodeStorage(code_length, no_codes, memory_storage)
        # perform auto conversion
        code_length_ = Int(code_length)
        no_codes_ = Int(no_codes)

        # check positiveness
        code_length_ < 1 && throw(ArgumentError(lazy"code_length = $(code_length_), should be positive"))
        no_codes_ < 1 && throw(ArgumentError(lazy"no_codes = $(no_codes_), should be positive"))

        # chek size of storage
        L = length(memory_storage)
        L_exp = code_length * no_codes
        if L != L_exp
            throw(ErrorException(lazy"length(memory_storage) = $L, expected $L_exp"))
        end
        return new(code_length_, no_codes_, Memory{Int8}(memory_storage))
    end
end

function CodeStorage(code_length, no_codes)
    return CodeStorage(code_length, no_codes, Memory{Int8}(undef, code_length * no_codes))
end

end

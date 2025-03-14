struct SpreadingCodeProperties
    length::Int64
    rate::Float64
end

struct ChipSource
    data::DataSource.Type
    overlay::SpreadingCodeProperties
    primary::SpreadingCodeProperties
end

@data SignalLevelEncoding begin
    NRZ
    NRZI
end
@derive SignalLevelEncoding[Show]
add_adt_exports(SignalLevelEncoding)

@data DigitalModulation begin
    BPSK
    struct BOCsin
        subcarrier_rate::Float64
    end
    struct BOCcos
        subcarrier_rate::Float64
    end
end
@derive DigitalModulation[Show]
add_adt_exports(DigitalModulation)

struct Modulator
    modulation::DigitalModulation.Type
    encoding::SignalLevelEncoding.Type
end

struct BasebandSignal
    source::ChipSource
    modulator::Modulator
end


@data BasebandProperties begin

    struct SingleSignal
        signal::BasebandSignal
    end

    struct MetaSignal
        signal1::BasebandSignal
        if1::Float64
        signal2::BasebandSignal
        if2::Float64
    end
end
@derive BasebandProperties[Show]
add_adt_exports(BasebandProperties)

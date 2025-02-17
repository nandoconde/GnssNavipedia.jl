module GnssNavipedia

using Moshi.Data.Prelude

import GnssCore: AbstractNavipedia, AbstractConstellation, AbstractSignalBand, AbstractSignalComponent
import GnssCore: get_constellations, get_signal_bands, get_signal_types

struct Navipedia <: AbstractNavipedia end

@data Constellations <: AbstractConstellation begin
    GPS
    GALILEO
    GLONASS
end

@data SignalBands <: AbstractSignalBand begin
    L1
    L2
    L5
    E1
    E5
    E6
end

@data SignalComponents <: AbstractSignalComponent begin
    L1C
    L2C
    L5I
    L5Q
    E1B
    E1C
    E5aI
    E5aQ
    E5bI
    E5bQ
    E6B
    E6C
end

function get_constellations(::Navipedia)
    return Constellations
end

function get_signal_bands(::Navipedia)
    return SignalBands
end

function get_signal_types(::Navipedia)
    return SignalComponents
end

end

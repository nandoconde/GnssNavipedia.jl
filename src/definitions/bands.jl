"""
    Bands

ADT module with main GNSS constellations.
"""
@data Bands <: AbstractBand begin
    L1
    L2
    L5
    E1
    E5
    E6
end
@derive Bands[Show]
add_adt_exports(Bands)
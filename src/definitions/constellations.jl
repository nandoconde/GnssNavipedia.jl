"""
    Constellations

ADT module with main GNSS constellations.
"""
@data Constellations <: AbstractConstellation begin
    GPS
    GALILEO
    GLONASS
    BEIDOU
end
@derive Constellations[Show]
add_adt_exports(Constellations)
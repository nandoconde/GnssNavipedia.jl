"""
    Signals

ADT module with all GNSS signal types.
"""
@data Signals <: AbstractSignal begin
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
@derive Signals[Show]
add_adt_exports(Signals)

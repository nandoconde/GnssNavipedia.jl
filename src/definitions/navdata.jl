"""
    NavData

ADT module with all types of navigation data.
"""
@data NavData begin # abstract type?
    # TODO add GPS
    INAV
    CNAV
    FNAV
end
@derive NavData[Show]
add_adt_exports(NavData)

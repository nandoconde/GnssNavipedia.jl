"""
    DataSource

ADT module with all types of data sources GNSS signals may carry.
"""
@data DataSource begin
    Pilot
    Data(NavData.Type)
end
@derive DataSource[Show]
add_adt_exports(NavData)

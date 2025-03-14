module GnssNavipedia


import GnssCore
using GnssCore.Types
import GnssCore.Interface: get_constellations, get_bands, get_signals
using GnssCore.Constants.Frequencies

include("definitions/definitions.jl")
using .Definitions

include("properties/properties.jl")
using .Properties

const D_SIGNALS::Dict{Signals.Type, SignalProperties} = Dict{Signals.Type, SignalProperties}()
include("navipedia/navipedia.jl")
include("interface/interface.jl")


# TODO
# - Dict with SignalProperties per Signal
# - Implement getter/setter interfaces
# - Two methods per getter/setter:
#   1. get_xxxxxx(::Navipedia, s::Signals.Type)
#   2. get_xxxxxx(s::Signals.Type)
#   The second method calls the first, retrieving the active Navipedia from a ScopeValue
#   This way, the user can modify a local navipedia and provide it.
#   So, this mega_dictionary with signal properties must live within the Navipedia object
#   And so on with every needed object.
#

end

using Moshi
using Moshi.Data.Prelude
import Moshi.Derive: @derive

function add_adt_exports(Mod::Module)
    # this works
    T = getglobal(Mod, :Type)
    member_names = variant_name.(variants(T))
    for m in member_names
        @eval Mod export $(m)
    end
    return
end

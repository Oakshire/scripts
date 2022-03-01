--[[
    Script Name    : Spells/Priest/Shaman/Mystic/AncestralWard.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.13 07:12:27
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, WardAmt)
    -- Wards target against 155 points of all damage
    AddWard(WardAmt)

    Say(Caster, "Not Implemented: remainder to heal")
end

function remove(Caster, Target)
    RemoveWard()
end
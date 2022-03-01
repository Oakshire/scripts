--[[
    Script Name    : Spells/Priest/Shaman/Mystic/UmbralWarding.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.13 08:12:35
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, WardAmt)
    -- Wards group members (AE) collectively against 327 total points of all damage
    AddWard(Target, WardAmt)
end

function remove(Caster, Target)
    RemoveWard()
end
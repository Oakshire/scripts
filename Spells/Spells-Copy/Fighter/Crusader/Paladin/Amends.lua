--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/Amends.lua
    Script Author  : neatz09
    Script Date    : 2019.10.25 04:10:36
    Script Purpose : 
                   : 
--]]

-- Transfers 21% of target's current Threat to the caster
function cast(Caster, Target, Hate)
    AddThreatTransfer(Target, Caster, Hate)
end
function remove(Caster, Target)
    RemoveThreatTransfer(Caster)
end
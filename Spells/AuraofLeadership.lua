--[[
    Script Name    : Spells/AuraofLeadership.lua
    Script Author  : John Adams
    Script Date    : 2013.11.25 05:11:28
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Wards group members (AE) against 0 points of all damage

function cast(Caster, Target, WardAmt)
    AddWard(WardAmt)
end

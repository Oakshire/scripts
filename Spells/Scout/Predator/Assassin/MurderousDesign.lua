--[[
    Script Name    : Spells/Scout/Predator/Assassin/MurderousDesign.lua
    Script Author  : neatz09
    Script Date    : 2019.09.28 05:09:56
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Causes 5% Threat to transfer to target when in combat

function cast(Caster, Target, Xfer)
    AddThreatTransfer(Caster, Target, Xfer)
end

function remove(Caster, Target)
    RemoveThreatTransfer(Caster)
end
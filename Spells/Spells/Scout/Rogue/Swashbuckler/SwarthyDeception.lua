--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/SwarthyDeception.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.16 06:12:40
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, TransferAmt)
    -- Causes 6% Threat to transfer to target when in combat
    AddThreatTransfer(Caster, Target, TransferAmt)
end


function remove(Caster, Target)
    RemoveThreatTransfer(Caster)
end
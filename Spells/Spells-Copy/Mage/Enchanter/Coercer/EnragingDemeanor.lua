--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/EnragingDemeanor.lua
    Script Author  : neatz09
    Script Date    : 2019.10.22 06:10:26
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Xfer, Hate)
-- Causes 3% Threat to transfer to target when in combat    
AddThreatTransfer(Caster, Target, Xfer)
-- Increases Hate Gain of target by 7.9%
    AddSpellBonus(Target, 624, Hate)

end


function remove(Caster, Target)
    RemoveThreatTransfer(Caster)
    RemoveSpellBonus(Target)

end
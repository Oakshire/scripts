--[[
    Script Name    : Spells/AA/Spellbind.lua
    Script Author  : neatz09
    Script Date    : 2020.12.20 11:12:21
    Script Purpose : 
                   : 
--]]

-- Increases potency by 25% of the caster's base potency
--this needs to be reworked
function cast(Caster, Target, PotAmt)
    AddSpellBonus(Target, 659, PotAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
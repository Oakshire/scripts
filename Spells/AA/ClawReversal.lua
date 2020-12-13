--[[
    Script Name    : Spells/AA/ClawReversal.lua
    Script Author  : neatz09
    Script Date    : 2020.12.13 01:12:04
    Script Purpose : 
                   : 
--]]

-- Increases caster's chance to block by 1.6%
function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 651, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
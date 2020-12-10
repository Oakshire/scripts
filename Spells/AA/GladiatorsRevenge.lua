--[[
    Script Name    : Spells/AA/GladiatorsRevenge.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 02:12:58
    Script Purpose : 
                   : 
--]]

-- Increases caster's chance to block by 1.2%
function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 651, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
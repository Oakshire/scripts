--[[
    Script Name    : Spells/AvengersRelentlessness.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 12:12:34
    Script Purpose : 
                   : 
--]]

-- Increases DPS of caster by 1.8
function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 629, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
--[[
    Script Name    : Spells/AA/WildFerocity.lua
    Script Author  : neatz09
    Script Date    : 2020.12.11 12:12:17
    Script Purpose : 
                   : 
--]]

-- Increases DPS of caster by 4.0

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 629, BonusAmt)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
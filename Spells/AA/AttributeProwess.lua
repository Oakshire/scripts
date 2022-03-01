--[[
    Script Name    : Spells/AttributeProwess.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 01:12:11
    Script Purpose : 
                   : 
--]]

-- Increases INT, AGI, STR and WIS of caster by 0.6

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 0, BonusAmt)
    AddSpellBonus(Target, 2, BonusAmt)
    AddSpellBonus(Target, 3, BonusAmt)
    AddSpellBonus(Target, 4, BonusAmt)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)

end

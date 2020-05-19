--[[
    Script Name    : Spells/Priest/Druid/WildSpirit.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 06:01:05
    Script Purpose : 
                   : 
--]]

-- Increases AGI and WIS of group members (AE) by 13.1

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 2, BonusAmt)
    AddSpellBonus(Target, 3, BonusAmt)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

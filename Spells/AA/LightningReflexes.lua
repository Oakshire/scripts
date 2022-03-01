--[[
    Script Name    : Spells/AA/LightningReflexes.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 01:12:49
    Script Purpose : 
                   : 
--]]

-- Increases Ability Reuse Speed of caster by 1.0%

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 662, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
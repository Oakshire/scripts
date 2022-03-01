--[[
    Script Name    : Spells/AA/DivineRecovery.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 11:12:52
    Script Purpose : 
                   : 
--]]

-- Increases Ability Recovery Speed of group members (AE) by 33.3%
-- Increases Ability Casting Speed of group members (AE) by 50.0%

function cast(Caster, Target, Recov, Cast)
    AddSpellBonus(Target, 663, Recov)
    AddSpellBonus(Target, 664, Cast)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
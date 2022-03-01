--[[
    Script Name    : Spells/AA/Sailwind.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 05:12:59
    Script Purpose : 
                   : 
--]]

-- Increases Ability Recovery Speed of caster by 25.0%
-- Increases Ability Casting Speed of caster by 25.0%

function cast(Caster, Target, Recov, Cast)
    AddSpellBonus(Target, 663, Recov)
    AddSpellBonus(Target, 664, Cast)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
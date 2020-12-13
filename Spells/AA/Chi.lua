--[[
    Script Name    : Spells/AA/Chi.lua
    Script Author  : neatz09
    Script Date    : 2020.12.13 01:12:31
    Script Purpose : 
                   : 
--]]

-- Increases Attack Speed of caster by 50.0
-- Increases Multi Attack Chance of caster by 50.0
-- Increases Ability Reuse Speed of caster by 50.0%
-- Increases Ability Recovery Speed of caster by 100.0%
-- Increases Ability Casting Speed of caster by 100.0%

function cast(Caster, Target, Haste, Multi, Reuse, Recov, Cast)
    AddSpellBonus(Target, 617, Haste)
	AddSpellBonus(Target, 641, Multi)
	AddSpellBonus(Target, 662, Reuse)
	AddSpellBonus(Target, 663, Recov)
    AddSpellBonus(Target, 664, Cast)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
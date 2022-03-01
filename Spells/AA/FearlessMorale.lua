--[[
    Script Name    : Spells/FearlessMorale.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 02:12:36
    Script Purpose : 
                   : 
--]]

-- Increases Potency of group members (AE) by 2.0%
-- Makes caster immune to Fear effects

function cast(Caster, Target, Pot)
AddImmunitySpell(6, Caster)
    AddSpellBonus(Target, 659, Pot)
end

function remove(Caster, Target)
RemoveImmunitySpell(6, Caster)
    RemoveSpellBonus(Target)
end
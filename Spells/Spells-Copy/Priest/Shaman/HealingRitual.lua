--[[
    Script Name    : Spells/Priest/Shaman/HealingRitual.lua
    Script Author  : neatz09
    Script Date    : 2019.12.14 02:12:03
    Script Purpose : 
                   : 
--]]

-- Heals target for 182 - 223
-- Increases Max Health of target by 27.6

function cast(Caster, Target, MinHeal, MaxHeal, HP)
SpellHeal("Heal", MinHeal, MaxHeal)
    AddSpellBonus(Target, 606, HP)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

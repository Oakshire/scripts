--[[
    Script Name    : Spells/AA/TorporousStrike.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 02:12:36
    Script Purpose : 
                   : 
--]]

-- Inflicts 311 - 519 melee damage on target
-- Decreases Ability Recovery Speed of target by 45.0%
-- Decreases Ability Casting Speed of target by 22.5%

function cast(Caster, Target, DmgType, MinVal, MaxVal, Recov, Cast)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
	AddSpellBonus(Target, 663, Recov)
    AddSpellBonus(Target, 664, Cast)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
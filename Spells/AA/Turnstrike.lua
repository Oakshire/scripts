--[[
    Script Name    : Spells/AA/Turnstrike.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 04:12:16
    Script Purpose : 
                   : 
--]]

-- Inflicts 486 - 810 melee damage on target
-- Prevents AOE (except when direct) 

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
	AddImmunitySpell(7, Caster)
end

function remove(Caster, Target)
    AddImmunitySpell(7, Caster)
end
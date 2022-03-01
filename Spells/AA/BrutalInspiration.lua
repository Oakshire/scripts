--[[
    Script Name    : Spells/AA/BrutalInspiration.lua
    Script Author  : neatz09
    Script Date    : 2020.12.13 02:12:00
    Script Purpose : 
                   : 
--]]

-- Makes target immune to Root effects
-- Makes target immune to Stun effects
-- Makes target immune to Stifle effects
-- Makes target immune to Fear effects
-- Makes target immune to Daze effects
-- Makes target immune to Mesmerize effects

function cast(Caster, Target)
	AddImmunitySpell(5, Target) --Root
	AddImmunitySpell(4, Target) --Stun
	AddImmunitySpell(2, Target) --Stifle
	AddImmunitySpell(6, Target) --Fear
	AddImmunitySpell(3, Target) --Daze
	AddImmunitySpell(1, Target) --Mez
end

function remove(Caster, Target)
	RemoveImmunitySpell(5, Target) --Root
	RemoveImmunitySpell(4, Target) --Stun
	RemoveImmunitySpell(2, Target) --Stifle
	RemoveImmunitySpell(6, Target) --Fear
	RemoveImmunitySpell(3, Target) --Daze
	RemoveImmunitySpell(1, Target) --Mez
end
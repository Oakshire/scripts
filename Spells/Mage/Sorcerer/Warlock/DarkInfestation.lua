--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/DarkInfestation.lua
    Script Author  : neatz09
    Script Date    : 2020.05.13 05:05:39
    Script Purpose : 
                   : 
--]]

-- Inflicts 183 - 224 poison damage on target instantly and every 4 seconds
-- When damaged with a spell this spell has a 35% chance to cast Dark Broodlings on target.  Lasts for 6.0 seconds.  
--     Summons 3 limited pets to aid the caster
--     Grants a total of 1 trigger of the spell.
--     Grants a total of 1 trigger of the spell.

function cast(Caster, Target, DmgType, MinVal, MaxVal, Chance, PetID)
    Say(Caster, "Proc needs to trigger ONLY with Nox spells. Not yet implemented.")
	SpellDamage(Target, DmgType, MinVal, MaxVal)
	AddProc(Target, 5, Chance)
	SetSpellTriggerCount(1,0)
end


function tick(Caster, Target, DmgType, MinVal, MaxVal, Chance, PetID)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal, Chance, PetID)
	CastSpell(Target)
	RemoveTriggerFromSpell()
end

function remove(Caster, Target)
	RemoveProc(Target)
end
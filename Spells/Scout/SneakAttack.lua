--[[
    Script Name    : Spells/Scout/SneakAttack.lua
    Script Author  : neatz09
    Script Date    : 2020.11.06 07:11:46
    Script Purpose : 
                   : 
--]]

-- Inflicts 14 - 24 melee damage on target
-- Must be flanking or behind

function precast(Caster,Target)
	if not IsFlanking(Target, Caster) then
		SendMessage(Caster, "Must be flanking or behind", "yellow")
			return false
				end
	return true
end

function cast(Caster, Target, DmgType, MinVal, MaxVal)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end
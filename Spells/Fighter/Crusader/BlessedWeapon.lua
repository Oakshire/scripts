--[[
    Script Name    : Spells/Fighter/Crusader/BlessedWeapon.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 04:11:50
    Script Purpose : 
                   : 
--]]

-- On a melee hit this spell may cast Blessed Strike on target of attack.  Triggers about 2.0 times per minute. 
--     Inflicts 21 - 35 divine damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal, Chance)
	AddProc(Target, 3, Chance)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal, Chance)
	if Type == 3 then
		ProcDamage(Caster, Target, "Blessed Strike", DmgType, MinVal, MaxVal)
			end
end

function remove(Caster, Target)
	RemoveProc(Target)
end
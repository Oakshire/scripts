--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/InspiredDaring.lua
    Script Author  : neatz09
    Script Date    : 2020.09.27 08:09:39
    Script Purpose : 
                   : 
--]]

-- On a melee hit this spell will cast Daring Attack on target of attack.  
--     Inflicts 80 - 133 piercing damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
	AddProc(Target, 3, 100)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
	if Type == 3 then
		ProcDamage(Caster, Target, "Daring Attack", DmgType, MinVal, MaxVal)
			end
end

function remove(Caster, Target)
	RemoveProc(Target)
end
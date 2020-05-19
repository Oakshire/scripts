--[[
    Script Name    : Spells/Commoner/ShowerofDaggers.lua
    Script Author  : neatz09
    Script Date    : 2020.04.12 11:04:09
    Script Purpose : 
                   : 
--]]

-- On a combat hit this spell may cast Daggers on target of attack. Triggers about 5.0 per minute.
-- inflicts x - y damage based on character level

function cast(Caster, Target, DmgType, MinVal, MaxVal)
	AddProc(Target, 3, 5)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
	ProcDamage(Caster, Target, "Daggers", DmgType, MinVal, MaxVal)
end
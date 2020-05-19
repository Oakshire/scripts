--[[
    Script Name    : Spells/Scout/Bard/Dirge/DeadCalm.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 10:10:14
    Script Purpose : 
                   : 
--]]

-- On a combat hit this spell has a 12% chance to cast Crypt's Revenge on target of attack.  
--     Inflicts 30 - 51 disease damage on target

function cast(Caster, Target)
   AddProc(Target, 1, 12, nil, 1)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
	ProcDamage(Caster, Target, "Crypt's Revenge", DmgType, MinVal, MaxVal)
end
function remove(Caster, Target)
	RemoveProc(Target)
end
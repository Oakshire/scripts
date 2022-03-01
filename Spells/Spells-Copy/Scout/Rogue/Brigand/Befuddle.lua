--[[
    Script Name    : Spells/Scout/Rogue/Brigand/Befuddle.lua
    Script Author  : neatz09
    Script Date    : 2019.10.24 04:10:44
    Script Purpose : 
                   : 
--]]

-- On a melee hit this spell may cast Baffle on target of attack.  Triggers about 4.0 times per minute. 
--     Decreases Threat to target by 156 
function cast(Caster, Target, Hate)
	AddProc(Target, 3, 6.25)
end

function proc(Caster, Target, Type, Hate)
	ProcHate(Caster, Target, Hate, "Baffle")
end

function remove(Caster, Target)
RemoveProc(Target)
end
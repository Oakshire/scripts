--[[
    Script Name    : Spells/Scout/Bard/Troubador/AriaofMagic.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 10:10:41
    Script Purpose : 
                   : 
--]]

-- On a hostile spell hit this spell has a 30% chance to cast Dissonant Note on target of spell.  
--     Inflicts 161 - 269 mental damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
	AddProc(Target, 5, 30, nil, 1)
end

function proc(Caster, Target, Type, DmgType, Minval, MaxVal)
	ProcDamage(Caster, Target, "Dissonant Note", DmgType, MinVal, MaxVal)
end

function remove(Caster, Target)
	RemoveProc(Target)
end
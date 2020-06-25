--[[
    Script Name    : Spells/Scout/Bard/Troubador/PerfectionoftheMaestro.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 10:10:14
    Script Purpose : 
                   : 
--]]

-- Increases INT of group members (AE) by 75.2
-- On a hostile spell cast this spell will cast Precise Note on target of spell.  
--     Inflicts 247 - 302 mental damage on target

function cast(Caster, Target, Int, DmgType, MinVal, MaxVal)
    AddSpellBonus(Target, 4, Int)
    AddProc(Target, 1, 5, 100, nil, 1)
end

function proc(Caster, Target, Type, Int, DmgType, MinVal, MaxVal)
	ProcDamage(Caster, Target, "Precise Note", DmgType, MinVal, MaxVal)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
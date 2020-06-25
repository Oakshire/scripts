--[[
    Script Name    : Spells/Scout/Bard/Dirge/CacophonyofBlades.lua
    Script Author  : neatz09
    Script Date    : 2020.02.29 07:02:55
    Script Purpose : 
                   : 
--]]


-- Increases Haste of group members (AE) by 43.9
-- On a hit this spell will cast Blade Chime on target of attack.  
--     Inflicts 100 - 168 disease damage on target

function cast(Caster, Target, Haste, DmgType, MinVal, MaxVal)
    AddSpellBonus(Target, 617, Haste)
    AddProc(Target, 3, 100, nil, 1)
end

function proc(Caster, Target, Type, Haste, DmgType, MinVal, MaxVal)
	ProcDamage(Caster, Target, "Blade Chime", DmgType, MinVal, MaxVal)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
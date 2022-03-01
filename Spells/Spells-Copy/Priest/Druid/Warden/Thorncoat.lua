--[[
    Script Name    : Spells/Priest/Druid/Warden/Thorncoat.lua
    Script Author  : Ememjr
    Script Date    : 2019.04.28 02:04:52
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- When damaged with a melee weapon this spell will cast Thorns on target's attacker.  
--     Inflicts 1 piercing damage on target
function cast(Caster, Target)
    -- When damaged with a melee weapon this spell will cast Thorns on target's attacker.  
    AddProc(Target, 4, 100)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
    if Type == 4 then
        --     Inflicts 1 piercing damage on target encounter
        if MaxVal ~= nil and MinVal < MaxVal then
            ProcDamage(Caster, Target, "Thorns", DmgType, MinVal, MaxVal)
        else
            ProcDamage(Caster, Target, "Thorns", DmgType, MinVal)
        end
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end
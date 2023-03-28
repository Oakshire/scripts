--[[
    Script Name    : Spells/Commoner/Quicksand.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.27 03:03:57
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- Does not affect Epic targets
    if IsEpic(Target) then
        return false, 43
    end

    return true
end

function cast(Caster, Target)
    -- Roots target
    SetSpeedMultiplier(Target, 0.304)

    -- 10% chance to dispel when target takes damage
    AddProc(Target, 15, 5.0)

end

function proc(Caster, Target, Type)
    if Type == 15 then
        CancelSpell()
    end
end
    
function remove(Caster, Target)
    SetSpeedMultiplier(Target, 1.0)
end

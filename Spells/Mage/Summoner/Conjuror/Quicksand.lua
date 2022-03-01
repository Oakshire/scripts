--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/Quicksand.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.12 04:03:35
    Script Purpose : 
                   : 
--]]

-- Resistibility increases against targets higher than level 29.
function precast(Caster, Target)
    -- Does not affect Epic targets
    if IsEpic(Target) then
        return false, 43
    end

    return true
end

function cast(Caster, Target)
    -- Roots target
    SetSpeedMultiplier(Target, 0)

    -- 15% chance to dispel when target takes damage
    AddProc(Target, 2, 15.0)
end

function proc(Caster, Target, Type)
    if Type == 2 then
        CancelSpell()
    end
end

function remove(Caster, Target)
    SetSpeedMultiplier(Target, 1.0)

    -- Applies Quicksand on termination.  Lasts for 10.0 seconds.
    --     Slows target by 27.9%
    --     5% chance to dispel when target receives hostile action
    --     5% chance to dispel when target takes damage
end


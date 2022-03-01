--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/NetherousBind.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.14 05:01:35
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)


function cast(Caster, Target, Snare)
    -- Roots target
    -- 15% chance to dispel when target takes damage
    -- Does not affect Epic targets
    -- Resistibility increases against targets higher than level 29.
    if not IsEpic(Target) then
        SetSpeedMultiplier(Target, Snare)
        AddProc(Target, 2, 15.0)
    end
end

function proc(Caster, Target, Type)
    if Type == 2 then
        -- Cancel spell
    end
end

function remove(Caster, Target)
    SetSpeedMultiplier(Target, 1.0)

    -- Applies Element of Fear on termination.  Lasts for 5.0 seconds.
    --     Makes target afraid
    --     Slows target by 27.9%
    --     30% chance to dispel when target takes damage
    --     Does not affect Epic targets
    --     Resistibility increases against targets higher than level 34.
end

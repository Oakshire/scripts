--[[
    Script Name    : Spells/Priest/Druid/Fury/KaranasHold.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.14 03:01:39
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- Does not affect Epic targets
    if not IsEpic(Target) then
        -- Roots target
        SetSpeedMultiplier(Target, 0)

        -- 5% chance to dispel when target takes damage
        AddProc(Target, 2, 5.0)
    end

    -- Resistibility increases against targets higher than level 29.
end

function proc(Caster, Target, Type)
    if Type == 2 then
        -- Cancel the spell
        Say(Caster, "Not Implemented: cancel the spell");
    end
end

function remove(Caster, Target)
    SetSpeedMultiplier(Target, 1)
end

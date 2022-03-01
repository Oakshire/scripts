--[[
    Script Name    : Spells/Priest/Druid/Fury/Brambles.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.14 03:01:51
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Hate, Snare)
    -- Stifles targets in Area of Effect
    --     If Target is not Epic
    if not IsEpic(Target) then
        AddControlEffect(Target, 2)
    end

    -- Decreases Threat to targets in Area of Effect by 323 
    -- Decreases threat priority of targets in Area of Effect by 1 position
    AddHate(Caster, Target, Hate, 1)

    -- Slows targets in Area of Effect by 31.5%
    SetSpeedMultiplier(Target, (100 - Snare))

    -- 10% chance to dispel when target receives hostile action
    -- 10% chance to dispel when target takes damage
    AddProc(Target, 2, 10.0)
end

function proc(Caster, Target, Type)
    if Type == 2 then
        Say(Caster, "Not Implemented: cancel spell")
    end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 2)
    SetSpeedMultiplier(Target, 1.0)
end

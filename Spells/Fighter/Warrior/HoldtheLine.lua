--[[
    Script Name    : Spells/Fighter/Warrior/HoldtheLine.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.03 02:01:18
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, SelfSnare, Hate)
    local Slow = 1.0 - SelfSnare
    SetSpeedMultiplier(Caster, Slow)
    AddProc(Caster, 15, 50.0)
end

function proc(Caster, Target, Type, Hate)
    if Type == 15 then
    AddHate(Caster, Target, Hate, 1)
    end
end

function remove(Caster, Target)
    SetSpeedMultiplier(Caster, 1)
end


--[[
    Script Name    : Spells/Priest/Druid/Warden/Root.lua
    Script Author  : theFoof
    Script Date    : 2014.3.13
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
-- Roots target
-- Applies Ensnare on termination.  Lasts for 12.0 seconds.
-- Slows target by 28.3%
-- 5% chance to dispel when target receives hostile action
-- 5% chance to dispel when target takes damage
-- 5% chance to dispel when target takes damage
-- Does not affect Epic targets
-- Resistibility increases against targets higher than level 29.

--    Note: Need support for snares
    if not IsEpic(Target) then
        AddControlEffect(Target, 5)
        AddProc(Target, 15, 5)
    end
end

function remove(Caster, Target)
    if not IsEpic(Target) then
        RemoveControlEffect(Target, 5)
        RemoveProc(Target)
    end
end

function proc(Caster, Target, ProcType)
    CancelSpell()
end


--[[
    Script Name    : Spells/Scout/CheapShot.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.16 03:12:31
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- Does not affect Epic targets
    return (not IsEpic(Target)), 43
end

function cast(Caster, Target)
    -- Stuns target
    AddControlEffect(Target, 4)
end

function remove(Caster, Target)
    -- Applies Cheap Shot on termination.  Lasts for 2.0 seconds.
    --     Stuns target
    --     Does not affect Heroic or Epic targets.
    if not IsHeroic(Target) then
        AddSpellTimer(2000, "RemoveStun")
    else
        RemoveControlEffect(Target, 4)
    end
end

function RemoveStun(Caster, Target)
    RemoveControlEffect(Target, 4)
end

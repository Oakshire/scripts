--[[
    Script Name    : Spells/Scout/Bard/Dirge/LanetsExcruciatingScream.lua
    Script Author  : theFoof
    Script Date    : 2013.12.08
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, DmgLow, DmgHigh)
-- Dazes target
-- If Target is not Epic
-- Inflicts disease damage on target
-- Resistibility increases against targets higher than level 29. (need to add code for this eventually)

    if not IsEpic(Target) then
        AddControlEffect(Target, 3)
    end
end

function remove(Caster, Target, DmgType, DmgLow, DmgHigh)
    RemoveControlEffect(Target, 3)
    SpellDamage(Target, DmgType, DmgLow, DmgHigh)
end


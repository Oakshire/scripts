--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/DarkNebula.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.05 07:03:59
    Script Purpose : 
                   : 
--]]
-- need to add resistance function --
function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 55 - 101 poison damage on target encounter
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Stuns target encounter
    --     If Target is not Epic
    if not IsEpic(Target) then
        AddControlEffect(Target, 4)
    end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 4)
end

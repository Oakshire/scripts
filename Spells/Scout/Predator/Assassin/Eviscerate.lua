--[[
    Script Name    : Spells/Scout/Predator/Assassin/Eviscerate.lua
    Script Author  : Jabantiz
    Script Date    : 2014.04.17 04:04:33
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- You must be sneaking to use this ability.
    if not IsStealthed(Caster) then
        SendMessage(Caster, "You must be sneaking to use this ability.", "yellow")
        return false
    end

if not IsFlanking(Caster, Target) then
    SendMessage(Caster, "Must be flanking or behind", "yellow")
    return false
end

return true

end

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 144 - 241 melee damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

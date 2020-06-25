--[[
    Script Name    : Spells/Scout/Predator/Assassin/Massacre.lua
    Script Author  : Jabantiz
    Script Date    : 2014.04.17 05:04:44
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- You must be in stealth to use this!
    if not IsStealthed(Caster) then
        SendMessage(Caster, "You must be in stealth to use this!", "yellow")
        return false
    end

    return true
end

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 203 - 339 melee damage on targets in Area of Effect
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

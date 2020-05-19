--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/SuckerPunch.lua
    Script Author  : Dello
    Script Date    : 10/07/2014
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    if not IsFlanking(Caster, Target) then
        SendMessage(Caster, "You must be flanking or behind", "yellow")
        return false
    end

    return true
end


function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    if not IsEpic(Target) then
        AddControlEffect(Target, 3)
    end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 3)
end

--[[
    Script Name    : Spells/Scout/Predator/Ranger/NaturalSelection.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.10 07:03:13
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- You must be in stealth to use this!
    if not IsStealthed(Caster) then
        SendMessage(Caster, "You must be in stealth to use this!", "yellow")
    end

    -- Requires bow
    local item = GetEquippedItemBySlot(Caster, 16)
    if not item or GetItemType(item) ~= 2 then
        -- no item or item is not a ranged item (no way to determine different range items currently)
        return false, 68
    end

    return true
end

function cast(Caster, Target, MinVal, MaxVal)
    -- Inflicts 184 - 308 ranged damage on targets in Area of Effect
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, 0, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, 0, MinVal)
    end
end
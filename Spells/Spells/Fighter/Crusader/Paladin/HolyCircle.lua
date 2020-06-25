--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/HolyCircle.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.05 09:12:58
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, HealVal)
    -- Inflicts 25 - 43 divine damage on targets in Area of Effect
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Heals group members (AE) for 13
    --     This effect cannot be critically applied.
    -- The healing of this spell cannot be modified except by direct means
    local group = GetGroup(Caster)
    if group == nil then
        SpellHeal("Heal", HealVal, HealVal, Caster)
    else
        for key,value in pairs(group) do
            if value ~= nil then
                if GetDistance(Caster, value) <= 5 then
                    SpellHeal("Heal", HealVal, HealVal, value)
                end
            end
        end
    end
end
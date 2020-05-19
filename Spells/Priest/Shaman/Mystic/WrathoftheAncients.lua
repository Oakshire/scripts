--[[
    Script Name    : Spells/Priest/Shaman/Mystic/WrathoftheAncients.lua
    Script Author  : neatz09
    Script Date    : 2019.09.27 10:09:01
    Script Purpose : 
                   : 
--]]

-- Inflicts 130 - 159 disease damage on target encounter

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end


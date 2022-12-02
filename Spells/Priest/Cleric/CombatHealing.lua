--[[
    Script Name    : Spells/Priest/Cleric/CombatHealing.lua
    Script Author  : LordPazuzu
    Script Date    : 12/18/2022
    Script Purpose : 
                   : 
--]]

-- Heals target for 91 - 111


function cast(Caster, Target, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        ModifyHP(Target, math.random(MinVal, MaxVal))
    else
        ModifyHP(Target, MinVal)
    end
        Say(Caster, "Still gathering data on offensive buff.")

end

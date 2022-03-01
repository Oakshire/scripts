--[[
    Script Name    : Spells/Priest/Druid/Fury/Hibernation.lua
    Script Author  : neatz09
    Script Date    : 2019.10.11 09:10:58
    Script Purpose : 
                   : 
--]]


-- Applies Awakening on termination.
--     Heals target for 1089 - 1332

function cast(Caster, Target)

end

function remove(Caster, Target, MinVal, MaxVal)
SpellHeal("Heal", MinVal, MaxVal)
end

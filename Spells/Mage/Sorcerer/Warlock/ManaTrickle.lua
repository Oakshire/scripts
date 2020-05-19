--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/ManaTrickle.lua
    Script Author  : neatz09
    Script Date    : 2019.10.14 11:10:42
    Script Purpose : 
                   : 
--]]


-- Increases power of target by 30 instantly and every 4 seconds

function cast(Caster, Target, Min)
SpellHeal("Power", Min)
end


function tick(Caster, Target, Min)
SpellHeal("Power", Min)
end



--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/Bewilderment.lua
    Script Author  : theFoof
    Script Date    : 2014.3.1
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
-- Stuns target encounter
-- Epic targets gain an immunity to Stun effects of 8.3 seconds and duration is reduced to 0.9 seconds.
-- Resistibility increases against targets higher than level 29.
    AddControlEffect(Target, 4)
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 4)
end


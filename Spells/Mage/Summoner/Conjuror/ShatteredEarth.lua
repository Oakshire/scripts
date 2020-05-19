--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/ShatteredEarth.lua
    Script Author  : neatz09
    Script Date    : 2019.10.13 12:10:17
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
-- Inflicts 211 - 258 magic damage on target encounter instantly and every second 
SpellDamage(Target, DmgType, MinVal, MaxVal)  
-- Dazes target encounter
--     If Target is not Epic
-- Resistibility increases against targets higher than level 29.
if not IsEpic(Target) then
        AddControlEffect(Target, 3)
end
end
function tick(Caster, Target, Dmgtype, MinVal, MaxVal)
-- Inflicts 211 - 258 magic damage on target encounter instantly and every second  
SpellDamage(Target, DmgType, MinVal, MaxVal)
end

function remove(Caster, Target)  
    RemoveControlEffect(Target, 3)

end


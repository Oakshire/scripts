--[[
    Script Name    : Spells/Scout/Animist/Beastlord/SpinechillerBlood.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 02:10:27
    Script Purpose : 
                   : 
--]]


-- Inflicts 7 - 12 poison damage on target
function cast(Caster, Target, DmgType, MinVal, MaxVal, DotType, MinVal2, MaxVal2)
 SpellDamage(Target, DmgType, MinVal, MaxVal)  
end

function tick(Caster, Target)
-- Inflicts 2 - 3 poison damage on target instantly and every 4 seconds
  SpellDamage(Target, DotType, MinVal2, MaxVal2)
end



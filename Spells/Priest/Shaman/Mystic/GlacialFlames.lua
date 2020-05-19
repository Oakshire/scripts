--[[
    Script Name    : Spells/Priest/Shaman/Mystic/GlacialFlames.lua
    Script Author  : neatz09
    Script Date    : 2019.11.04 09:11:19
    Script Purpose : 
                   : 
--]]


-- Inflicts 58 - 71 cold damage on target instantly and every 3 seconds


function cast(Caster, Target, DoTType, MinVal, MaxVal)
  SpellDamage(Target, DoTType, MinVal, MaxVal)
end

function tick(Caster, Target, DoTType, MinVal, MaxVal)
  SpellDamage(Target, DoTType, MinVal, MaxVal)
end

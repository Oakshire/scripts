--[[
    Script Name    : Spells/Mage/Summoner/AqueousSoul.lua
    Script Author  : neatz09
    Script Date    : 2019.10.16 10:10:22
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
-- Allows target to breathe under water
BreatheUnderwater(Target, true)
end



function remove(Caster, Target)
BreatheUnderwater(Target, False)
end

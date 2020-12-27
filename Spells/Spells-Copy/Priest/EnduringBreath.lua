--[[
    Script Name    : Spells/Priest/EnduringBreath.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.14 12:12:26
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- Allows target to breathe under water
    BreatheUnderwater(Target, true)
end

function remove(Caster, Target)
    BreatheUnderwater(Target, false)
end

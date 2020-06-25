--[[
    Script Name    : Spells/Priest/Druid/Fury/UntamedShroud.lua
    Script Author  : neatz09
    Script Date    : 2019.10.28 06:10:39
    Script Purpose : 
                   : 
--]]

function precast(Caster)
    return not IsInCombat(Caster)
end


function cast(Caster, Target)
Stealth(2, Target)
end


function remove(Caster, Target)
RemoveInvis(Target)
end

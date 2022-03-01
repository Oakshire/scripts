--[[
    Script Name    : Spells/Commoner/FaerieFire.lua
    Script Author  : neatz09
    Script Date    : 2020.09.06 03:09:39
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, State)
  SpawnSet(Target, "visual_state", State)
end


function remove(Caster, Target)
  SpawnSet(Target, "visual_state", 0)
end

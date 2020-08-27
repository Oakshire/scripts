--[[
    Script Name    : Spells/Commoner/AuraoftheRatonga.lua
    Script Author  : neatz09
    Script Date    : 2020.08.23 08:08:57
    Script Purpose : 
                   : 
--]]

-- pass tier 1 for evil, tier 2 for good

function cast(Caster, Target, Aura)
  SpawnSet(Target, "visual_state", Aura)
end


function remove(Caster, Target)
  SpawnSet(Target, "visual_state", 0)
end

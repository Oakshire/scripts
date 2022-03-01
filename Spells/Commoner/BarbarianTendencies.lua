--[[
    Script Name    : Spells/Commoner/BarbarianTendencies.lua
    Script Author  : neatz09
    Script Date    : 2020.09.05 09:09:28
    Script Purpose : 
                   : 
--]]

-- pass tier 1 for evil, tier 2 for good

function cast(Caster, Target, Aura)
  SpawnSet(Target, "visual_state", Aura)
      AddControlEffect(Target, 5)
 
end


function remove(Caster, Target)
  SpawnSet(Target, "visual_state", 0)
    RemoveControlEffect(Target, 5)
end

--[[
    Script Name    : Spells/Commoner/Disorientation.lua
    Script Author  : neatz09
    Script Date    : 2020.09.30 09:09:40
    Script Purpose : 
                   : 
--]]

-- On any combat or spell hit this spell will cast Disorientation on target.  Lasts for 4.0 seconds.  
--     Stuns target
--         If Target is not Epic
--     Grants a total of 3 triggers of the spell.
function cast(Caster, Target)
  AddControlEffect(Target, 4)
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 4)
end

--[[
    Script Name    : Spells/Priest/Shaman/Defiler/Abominus.lua
    Script Author  : neatz09
    Script Date    : 2019.10.10 09:10:42
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
-- Allows group members (AE) to breathe under water
BreatheUnderwater(Target, true)
-- Allows group members (AE) to jump under water
  AddControlEffect(Target, 8)
-- Allows group members (AE) to walk under water
 AddControlEffect(Target,7)

end

function remove(Caster, Target)
BreatheUnderwater(Target, False)
    RemoveControlEffect(Target, 8)
    RemoveControlEffect(Target, 7)

end

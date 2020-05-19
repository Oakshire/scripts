--[[
    Script Name    : Spells/Commoner/ration.lua
    Script Author  : neatz09
    Script Date    : 2019.08.19 12:08:40
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, Bonus)
-- Increases Out-of-Combat Health Regeneration of target by 4.0
AddSpellBonus(Target, 602, Bonus)

end

function remove(Caster, Target, Bonus)
    RemoveSpellBonus(Target)
end
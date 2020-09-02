--[[
    Script Name    : Spells/Scout/Bard/Troubador/JestersCap.lua
    Script Author  : neatz09
    Script Date    : 2020.02.12 07:02:59
    Script Purpose : 
                   : 
--]]
-- Increases Ability Reuse Speed of target by 22.5%

function cast(Caster, Target, Reuse)
    AddSpellBonus(Target, 662, Reuse)

end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end

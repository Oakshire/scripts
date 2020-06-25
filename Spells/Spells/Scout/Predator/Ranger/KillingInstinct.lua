--[[
    Script Name    : Spells/Scout/Predator/Ranger/KillingInstinct.lua
    Script Author  : neatz09
    Script Date    : 2019.10.24 03:10:05
    Script Purpose : 
                   : 
--]]

-- Increases Multi Attack of caster by 43.5
-- Increases Ranged of caster by 16.2

function cast(Caster, Target, Multi, Range)
AddSpellBonus(Target, 641, Multi)
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), Range)

end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)

end

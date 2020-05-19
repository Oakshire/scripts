--[[
    Script Name    : Spells/Scout/Predator/Assassin/DeadlyFocus.lua
    Script Author  : neatz09
    Script Date    : 2019.10.11 04:10:19
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Accuracy, Multi, SkillAmt)
-- Caster will have their chance to hit with a weapon increased by 4.5%   
 AddSpellBonus(Target, 682, Accuracy)
-- Increases Multi Attack of caster by 29.0   
 AddSpellBonus(Target, 641, Multi)
-- Increases Piercing, Slashing and Crushing of caster by 10.8    
AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)

end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)

end

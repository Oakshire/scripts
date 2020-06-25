--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/EyeGouge.lua
    Script Author  : Dello
    Script Date    : 09/07/2014
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, DmgType, MinVal, MaxVal, SkillAmt)
SpellDamage(Target, DmgType, MinVal, MaxVal)
if LastSpellAttackHit() then    
AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
    
AddSkillBonus(Target, GetSkillIDByName("Ranged"), SkillAmt)
    
AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
    
AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)

end
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end
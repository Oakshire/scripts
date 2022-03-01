--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/FlashofBrilliance.lua
    Script Author  : neatz09
    Script Date    : 2019.09.23 05:09:45
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, Int, SkillAmt)
-- Increases INT of group members (AE) by 35.1
  AddSpellBonus(Target, 4, Int)

-- Increases Focus, Disruption, Subjugation, Ministration and Ordination of group members (AE) by 13.5
    AddSkillBonus(Target, GetSkillIDByName("Disruption"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Subjugation"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ministration"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ordination"), SkillAmt)

end


function remove(Caster, Target, Int, SkillAmt)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)


end

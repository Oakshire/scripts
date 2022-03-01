--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/CalltoArms.lua
    Script Author  : John Adams
    Script Date    : 2013.11.22 08:11:16
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt)

    -- Increases Slashing, Ranged, Crushing and Piercing of group members (AE) by 1.9
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)

end

function remove(Caster, Target, SkillAmt)
    RemoveSkillBonus(Target)
end
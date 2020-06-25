--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/CallofShielding.lua
    Script Author  : Dello
    Script Date    : 09/06/2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MaxVal, DefSkills)

    AddSpellBonus(Target, 1, MaxVal)

    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefSkills)
end


function remove(Caster, Target)
    RemoveSkillBonus(Target)
    RemoveSpellBonus(Target)
end
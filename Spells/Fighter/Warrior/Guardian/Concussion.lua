--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/Concussion.lua
    Script Author  : Dello
    Script Date    : 2013.08.11 02:08:51
    Script Purpose : 
                   : 
--]]
function cast(Caster, Target, DmgType, MinVal, MaxVal, SkillAmt)

    AddSkillBonus(Target, GetSkillIDByName("Ordination"), SkillAmt)

    AddSkillBonus(Target, GetSkillIDByName("Ministration"), SkillAmt)

    AddSkillBonus(Target, GetSkillIDByName("Disruption"), SkillAmt)

    AddSkillBonus(Target, GetSkillIDByName("Subjugation"), SkillAmt)

    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end
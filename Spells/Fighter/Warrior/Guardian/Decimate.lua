--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/Decimate.lua
    Script Author  : Dello
    Script Date    : 10/06/2014
    Script Purpose : 
                   : 
--]]



function cast(Caster, Target, DmgType, MinVal, MaxVal, DefSkills)
    Say(Caster, "cannot be parry etc... not implemented.")

    AddSkillBonus(Target, GetSkillIDByName("Parry"), DefSkills)

    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefSkills)

    AddSkillBonus(Target, GetSkillIDByName("Deflection"), DefSkills)

    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end

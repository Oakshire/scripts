--[[
    Script Name    : Spells/Fighter/Brawler/PowerStrike.lua
    Script Author  : Dello
    Script Date    : 2014.07.10 06:07:45
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, DmgType, MinVal, MaxVal, DefSkills)

    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefSkills)

    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end
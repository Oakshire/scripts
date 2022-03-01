--[[
    Script Name    : Spells/Scout/Predator/Assassin/CripplingStrike.lua
    Script Author  : neatz09
    Script Date    : 2019.09.23 03:09:37
    Script Purpose : 
                   : 
--]]
-- Must be flanking or behind
function precast(Caster, Target)
    -- Must be flanking or behind
    if not IsFlanking(Caster, Target) then
        SendMessage(Caster, "Must be flanking or behind", "yellow")
        return false
    end
end

-- Inflicts 386 - 643 melee damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal, SkillAmt)
	if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
    Say(Caster, "need to add IfLastHit to debuff portion")

-- Decreases Defense of target by 23.5
        AddSkillBonus(Target, GetSkillIDByName("Defense"), SkillAmt)
end

function remove(Caster, Target, SkillAmt)
    RemoveSkillBonus(Target)

end

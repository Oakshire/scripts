--[[
	Script Name	: Spells\Traditions\Combat\HealingTouch.lua
	Script Author	: Zcoretri
	Script Date	: 2013.03.26
	Script Notes	: Barbarian - Increases Ministration by 5.0
--]]

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, 366253016, SkillAmt)
end

function remove(Caster, Target, SkillAmt)
    RemoveSkillBonus(Target)
end
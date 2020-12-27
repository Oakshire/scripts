--[[
	Script Name	: Spells\Tradidtions\Tradeskill\DarkArmament.lua
	Script Purpose	:
	Script Author	: Zcoretri
	Script Date	: 2013.02.01
	Script Notes	: Increases Metal Shaping by 5.0
--]]

function cast(Caster, Target, Bonus)
    AddSkillBonus(Target, 3108933728, Bonus)
end

function remove(Caster, Target, Bonus)
    RemoveSkillBonus(Target)
end
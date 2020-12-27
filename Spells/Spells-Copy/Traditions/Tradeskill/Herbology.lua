--[[
	Script Name	: Spells\Tradidtions\Tradeskill\Herbology.lua
	Script Purpose	:
	Script Author	: Zcoretri
	Script Date	: 2013.02.01
	Script Notes	: Increases Chemistry by 5.0
--]]

function cast(Caster, Target, Bonus)
    AddSkillBonus(Target, 2557647574, Bonus)
end

function remove(Caster, Target, Bonus)
    RemoveSkillBonus(Target)
end
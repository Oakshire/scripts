--[[
	Script Name	: Spells\Tradidtions\Tradeskill\Brewmaster.lua
	Script Purpose	:
	Script Author	: Zcoretri
	Script Date	: 2013.02.01
	Script Notes	: Increases Artistry by 5.0
--]]

function cast(Caster, Target, Bonus)
    AddSkillBonus(Target, 3881305672, Bonus)
end

function remove(Caster, Target, Bonus)
    RemoveSkillBonus(Target)
end
--[[
	Script Name	: Spells\Traits\Insightful.lua
	Script Purpose	: Increases Wisdom by 4
	Script Author	: Zcoretri
	Script Date	: 2012.07.22
--]]

function cast(Caster, Target, StatAmt)
    AddSpellBonus(Target, 3, StatAmt)
end

function remove(Caster, Target, StatAmt)
    RemoveSpellBonus(Target)
end
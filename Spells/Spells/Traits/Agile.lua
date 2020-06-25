--[[
	Script Name	: Spells\Traits\Agile.lua
	Script Purpose	: Increases Agility by 4
	Script Author	: Zcoretri
	Script Date	: 2012.07.30
--]]

function cast(Caster, Target, StatAmt)
    AddSpellBonus(Target, 2, StatAmt)
end

function remove(Caster, Target, StatAmt)
    RemoveSpellBonus(Target)
end
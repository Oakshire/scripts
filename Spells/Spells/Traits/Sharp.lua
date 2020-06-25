--[[
	Script Name	: Spells\Traits\Sharp.lua
	Script Purpose	: Increases Intelligence by 4
	Script Author	: Zcoretri
	Script Date	: 2012.07.30
--]]

function cast(Caster, Target, StatAmt)
    AddSpellBonus(Target, 4, StatAmt)
end

function remove(Caster, Target, StatAmt)
    RemoveSpellBonus(Target)
end
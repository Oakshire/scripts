--[[
	Script Name	: Spells\Traits\Resolute.lua
	Script Purpose	: Increases Stamina by 4
	Script Author	: Zcoretri
	Script Date	: 2012.07.30
--]]

function cast(Caster, Target, StatAmt)
    AddSpellBonus(Target, 1, StatAmt)
end

function remove(Caster, Target, StatAmt)
    RemoveSpellBonus(Target)
end
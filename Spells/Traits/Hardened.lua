--[[
	Script Name	: Spells\Traits\Hardened.lua
	Script Purpose	: Increases mitigation vs physical damage by 270
	Script Author	: Zcoretri
	Script Date	: 2012.07.30
--]]

function cast(Caster, Target, StatAmt)
    AddSpellBonus(Target, 200, StatAmt)
end

function remove(Caster, Target, StatAmt)
    RemoveSpellBonus(Target)
end
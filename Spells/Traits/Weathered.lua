--[[
	Script Name	: Spells/Traits/Weathered.lua
	Script Purpose	: Increases mitigation vs elemental damage by 270
	Script Author	: Zcoretri
	Script Date	: 2012.07.30
--]]

function cast(Caster, Target, StatAmt)
    AddSpellBonus(Target, 203, StatAmt)
end

function remove(Caster, Target, StatAmt)
    RemoveSpellBonus(Target)
end
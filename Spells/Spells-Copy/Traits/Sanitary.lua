--[[
	Script Name	: Spells/Traits/Sanitary.lua
	Script Purpose	: Increases mitigation vs noxious damage by 270
	Script Author	: Zcoretri
	Script Date	: 2012.07.30
--]]

function cast(Caster, Target, StatAmt)
    AddSpellBonus(Target, 209, StatAmt)
end

function remove(Caster, Target, StatAmt)
    RemoveSpellBonus(Target)
end
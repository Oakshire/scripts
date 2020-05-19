--[[
	Script Name	: Spells\Traditions\LastOneStanding.lua
	Script Purpose	: Increases Stamina as you level
	Script Author	: Zcoretri
	Script Date	: 2012.07.31
--]]

function cast(Caster, Target, Modifier)
    Level = GetLevel(Target)
    BonusAmt = Level * Modifier
    AddSpellBonus(Target, 1, BonusAmt)
end

function remove(Caster, Target, StatAmt)
    RemoveSpellBonus(Target)
end
--[[
	Script Name	: Spells\Traditions\WisdomOfRivervale.lua
	Script Purpose	: Increases Wisdom as you level
	Script Author	: Zcoretri
	Script Date	: 2012.07.31
--]]

function cast(Caster, Target, Modifier)
    Level = GetLevel(Target)
    BonusAmt = Level * Modifier
    AddSpellBonus(Target, 3, BonusAmt)
end

function remove(Caster, Target, StatAmt)
    RemoveSpellBonus(Target)
end
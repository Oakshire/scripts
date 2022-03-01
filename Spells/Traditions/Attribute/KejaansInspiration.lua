--[[
	Script Name	: Spells\Traditions\KejaansInspiration.lua
	Script Purpose	: Increases Strength as you level
	Script Author	: Zcoretri
	Script Date	: 2012.07.22
--]]

function cast(Caster, Target, Modifier)
    Level = GetLevel(Target)
    BonusAmt = Level * Modifier
    AddSpellBonus(Target, 0, BonusAmt)
end

function remove(Caster, Target, StatAmt)
    RemoveSpellBonus(Target)
end
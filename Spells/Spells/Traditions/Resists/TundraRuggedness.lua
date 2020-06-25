--[[
	Script Name	: Spells\Traditions\Resist\TundraRuggedness.lua
	Script Purpose	:
	Script Author	: Zcoretri
	Script Date	: 2013.01.29
	Script Notes	: Increases physical mitigation based on level
--]]

function cast(Caster, Target, Modifier)
    CurLevel = GetLevel(Target)
    BonusAmt = CurLevel * Modifier
    AddSpellBonus(Target, 200, BonusAmt)
end

function remove(Caster, Target, Modifier)
    RemoveSpellBonus(Target)
end
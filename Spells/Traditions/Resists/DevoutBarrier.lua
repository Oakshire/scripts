--[[
	Script Name	: Spells\Traditions\Resist\DevoutBarrier.lua
	Script Purpose	:
	Script Author	: Zcoretri
	Script Date	: 2013.01.29
	Script Notes	: Increases Arcane mitigation based on level
--]]

function cast(Caster, Target, Modifier)
    CurLevel = GetLevel(Target)
    BonusAmt = CurLevel * Modifier
    AddSpellBonus(Target, 203, BonusAmt)
end

function remove(Caster, Target, Modifier)
    RemoveSpellBonus(Target)
end
--[[
	Script Name	: Spells\Traditions\Resist\Adaptable.lua
	Script Purpose	:
	Script Author	: Zcoretri
	Script Date	: 2013.03.29
	Script Notes	: 
--]]

function cast(Caster, Target, Modifier)
    CurLevel = GetLevel(Target)
    BonusAmt = CurLevel * Modifier
    AddSpellBonus(Target, 203, BonusAmt)
end

function remove(Caster, Target, Modifier)
    RemoveSpellBonus(Target)
end
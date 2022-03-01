--[[
	Script Name		:	ItemScripts/JumJumMuffins.lua
	Script Purpose	:
	Script Author	:	Neatz09
	Script Date		:	1/28/2021
	Script Notes	:
--]]

function cast(Item, Player)
	Spell = GetSpell(5462)
	Regenz = 10
	newDuration = 24000
	SetSpellData(Spell, "duration1", newDuration)
	SetSpellData(Spell, "duration2", newDuration)
	SetSpellDataIndex(Spell, 0, Regenz)
	SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by 10.0")
	CastCustomSpell(Spell, Player, Player)
end
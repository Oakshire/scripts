--[[
	Script Name		:	ItemScripts/JumJumCider.lua
	Script Purpose	:
	Script Author	:	Neatz09
	Script Date		:	1/28/2021
	Script Notes	:
--]]

function cast(Item, Player)
	Spell = GetSpell(5463)
	Regenz = 15
	newDuration = 24000
	SetSpellData(Spell, "duration1", newDuration)
	SetSpellData(Spell, "duration2", newDuration)
	SetSpellDataIndex(Spell, 0, Regenz)
	CastCustomSpell(Spell, Player, Player)
end
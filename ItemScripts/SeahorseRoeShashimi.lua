--[[
	Script Name		:	ItemScripts/SeahorseRoeSashimi.lua
	Script Purpose	:	
	Script Author	:	Neatz09
	Script Date		:	1/31/2021
	Script Notes	:	
--]]

function cast(Item, Player)
	Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericAgiSta.lua")
	Regenz = 221.3
	Stat = 15.4
	newDuration = 62400
	SetSpellData(Spell, "duration1", newDuration)
	SetSpellData(Spell, "duration2", newDuration)
	SetSpellDataIndex(Spell, 0, Regenz)
	SetSpellDataIndex(Spell, 1, Stat)
	SetSpellDisplayEffect(Spell, 0, "description", "Increases AGI and STA of target by " .. Stat)
	SetSpellDisplayEffect(Spell, 1, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regenz)
	CastCustomSpell(Spell, Player, Player)
end
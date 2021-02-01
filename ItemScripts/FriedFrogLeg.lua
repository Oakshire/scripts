--[[
	Script Name		:	ItemScripts/FriedFrogLeg.lua
	Script Purpose	:	
	Script Author	:	Neatz09
	Script Date		:	1/31/2021
	Script Notes	:	
--]]

function cast(Item, Player)
	Spell = GetSpell(5462)
	Regenz = 10
	Stat = 2.4
	newDuration = 36000
	SetSpellData(Spell, "lua_script", "Spells/Commoner/HomemadeMealGenericAgi.lua")
	SetSpellData(Spell, "duration1", newDuration)
	SetSpellData(Spell, "duration2", newDuration)
	SetSpellDataIndex(Spell, 0, Regenz)
	SetSpellDataIndex(Spell, 1, Stat)
	SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by 10.0")
	CastCustomSpell(Spell, Player, Player)
end
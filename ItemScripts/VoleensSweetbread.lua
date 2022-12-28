--[[
    Script Name    : ItemScripts/VoleensSweetbread.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.12.28 03:12:18
    Script Purpose : 
                   : 
--]]

function cast(Item, Player)
	Spell = GetSpell(5010)
	Regenz = 10.0
	newDuration = 18000
	SetSpellData(Spell, "duration1", newDuration)
	SetSpellData(Spell, "duration2", newDuration)
	SetSpellDataIndex(Spell, 0, Regenz)
	SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regenz)
	CastCustomSpell(Spell, Player, Player)
end

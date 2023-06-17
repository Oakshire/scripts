--[[
    Script Name    : ItemScripts/flaskofpondwater.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.06.16 04:06:24
    Script Purpose : 
                   : 
--]]

function cast(Item, Player)
	Spell = GetSpell(5009)
	Regenz = 11.4
	newDuration = 900
	SetSpellData(Spell, "duration1", newDuration)
	SetSpellData(Spell, "duration2", newDuration)
	SetSpellDataIndex(Spell, 0, Regenz)
	SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Power Regeneration of target by " .. Regenz)
	CastCustomSpell(Spell, Player, Player)
end



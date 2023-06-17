--[[
    Script Name    : ItemScripts/flaskoffilteredwater.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.06.16 04:06:26
    Script Purpose : 
                   : 
--]]

--[[ Begin Item Effects

* Increases Out-of-Combat Power Regeneration of target by 6.0

End Item Effects--]]

function cast(Item, Player)
	Spell = GetSpell(5009)
	Regenz = 12.0
	newDuration = 1800
	SetSpellData(Spell, "duration1", newDuration)
	SetSpellData(Spell, "duration2", newDuration)
	SetSpellDataIndex(Spell, 0, Regenz)
	SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Power Regeneration of target by " .. Regenz)
	CastCustomSpell(Spell, Player, Player)
end

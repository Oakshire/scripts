--[[
    Script Name    : ItemScripts/FlaskofWater.lua
    Script Author  : neatz09
    Script Date    : 2021.07.06 04:07:25
    Script Purpose : 
                   : 
--]]

--[[ Begin Item Effects

* Increases Out-of-Combat Power Regeneration of target by 15.0

End Item Effects--]]

function cast(Item, Player)
	Spell = GetSpell(5463)
	Regenz = 15.0
	newDuration = 18000
	SetSpellData(Spell, "duration1", newDuration)
	SetSpellData(Spell, "duration2", newDuration)
	SetSpellDataIndex(Spell, 0, Regenz)
	SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Power Regeneration of target by " .. Regenz)
	CastCustomSpell(Spell, Player, Player)
end
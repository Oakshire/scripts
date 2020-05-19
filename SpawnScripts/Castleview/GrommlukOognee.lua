--[[
	Script Name	: SpawnScripts/Castleview/GrommlukOognee.lua
	Script Purpose	: Grommluk Oognee 
	Script Author	: Scatman
	Script Date	: 2009.10.02
	Script Notes	: 
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/grommluk_oognee/qey_village04/100_swimmer_grommluk_multhail2_b5e61808.mp3", "I profess that I am not mad, but I do thinketh this water is too clean.  And the stones!  They doth not squish under thy feet!", "crazy", 2658355916, 3677777453)
end
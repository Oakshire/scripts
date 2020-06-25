--[[
	Script Name	: SpawnScripts/Castleview/ArmsdealerFroptub.lua
	Script Purpose	: Armsdealer Froptub <Weaponsmith>
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/armsdealer_froptub/qey_village04/100_armsdealer_froptub_multhail1_14614e12.mp3", "Graciously accept my pardon for I am a quite the bit busy.  Mayhaps I couldst speak with thee anon?", "", 1509622466, 1792291092, Spawn)
end
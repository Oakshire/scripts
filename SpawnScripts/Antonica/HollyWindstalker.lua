--[[
	Script Name	: SpawnScripts/Antonica/HollyWindstalker.lua
	Script Purpose	: Holly Windstalker 
	Script Author	: TyroneSWG
	Script Date	: 2019.01.15
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "PlayerInRange", "PlayerLeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function PlayerInRange(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/optional3/ghost_human_base_1/ft/ghost/ghost_human_base_1_1_victory_gf_65116994.mp3", "One down!  An eternity to go.", "", 3147020467, 1377166074, Spawn)

end

function PlayerLeaveRange(NPC, Spawn)
	FaceTarget(NPC, "Run cowards!") -- not actual line. just testing
end

function hailed(NPC, Spawn)
       FaceTarget(NPC, Spawn)
       Say(NPC, "Hello")
end


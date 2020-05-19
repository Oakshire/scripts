--[[
	Script Name	: SpawnScripts/Longshadow/ArmsdealerTNyvez.lua
	Script Purpose	: Armsdealer T`Nyvez <Weaponsmith>
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)

end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/weaponsmith/darkelf_weaponsmith_service_evil_1_hail_gf_9d2ef5c4.mp3", "A good weapon at your side is the only real friend you'll ever have!", "agree", 2557998412, 1299746806, Spawn)
end
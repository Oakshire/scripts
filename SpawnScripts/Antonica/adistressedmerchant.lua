--[[
    Script Name    : SpawnScripts/Antonica/adistressedmerchant.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.12 08:08:09
    Script Purpose : 
    Note           : Added VO - 07.23.2022 Dorbin
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 15, "InRange")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/optional1/a_distressed_merchant/antonica/oop_merchants/old_female_actor_call_out_43d00e89.mp3", "I beg of you to help me.  These foul beasts have blocked off my escape.  Help me out and I'll help you in return.", "flustered", 2005296554, 1864692692, Spawn, 0)
end
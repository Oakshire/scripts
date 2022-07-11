--[[
	Script Name		: SpawnScripts/BigBend/KarakiatBonewalker.lua
	Script Purpose	: Karakiat Bonewalker
	Script Author	: torsten
	Script Date		: 2022.07.10
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_hail_gf_417aa823.mp3", "Nasty scars and boiled tar!  Warriors is what we are!", "itch", 1257994883, 3501955854, Spawn, 0)
	elseif choice == 2 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_ogre_gf_b1f3691c.mp3", "Not mess with you, not mess with me...", "wince", 1032294332, 3970520281, Spawn, 0)
	elseif choice == 3 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_darkelf_gf_50ad1ae0.mp3", "Treat us badly in Neriak! I laugh now we in same spot!", "chuckle", 3570765081, 2205040834, Spawn, 0)
	elseif choice == 4 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_hail_gf_f491bc11.mp3", "Tasty treats, lots of meats.", "nod", 357958006, 4074544132, Spawn, 0)
	end
end
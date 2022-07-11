--[[
	Script Name	: SpawnScripts/BigBend/RalianazzSkullcracker.lua
	Script Purpose	: Ralianazz Skullcracker
	Script Author	: torsten
	Script Date	: 2022.07.10
	Script Notes	: 
--]]


function spawn(NPC)
    SetPlayerProximityFunction(NPC, 15, "InRange", "LeaveRange")		
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function InRange(NPC, Spawn)
    local choice = MakeRandomInt(1,3)
   	
   	if choice == 1 then
	    FaceTarget(NPC, Spawn)
   	    PlayFlavor(NPC, "", "You have great potential for inflicting devastation and pain upon the battlefield, young one.", "threaten", 0, 0, Spawn, 14) --no voiceover yet
	elseif choice == 2 then
	    FaceTarget(NPC, Spawn)
   	    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_c13548f0.mp3", "The Overlord knows the strength of the ogres; I'd enjoy reminding the others around here.", "threaten", 3218132325, 996755371, Spawn, 14)
	elseif choice == 3 then
	    FaceTarget(NPC, Spawn)
   	    PlayFlavor(NPC, "", "In war there is no room for fear.", "threaten", 0, 0, Spawn, 14) --no voiceover yet
	end
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,6)

	if choice == 1 then
		FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_900b92c8.mp3", "Blood, lots of blood on the battlefield.", "confused", 3309525058, 2311238979, Spawn, 14)
	elseif choice == 2 then
		FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_aef9ec6e.mp3", "The best dreams are the flashbacks of the battlefield.", "chuckle", 34784682, 541558536, Spawn, 14)
	elseif choice == 3 then
		FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/ogre/ft/ogre/ogre_eco_garble_garbled_gm_5b81626f.mp3", "Koda dal moden va", "brandish", 3514709231, 112583900, Spawn, 14)
	elseif choice == 4 then
		FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_b11c99a1.mp3", "Make war not love.", "flirt", 163636935, 1865034471, Spawn, 14)
	elseif choice == 5 then
		FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/ogre/ft/ogre/ogre_eco_garble_garbled_gm_db73bf19.mp3", "Kreven obas halas tebo", "glare", 510403883, 4026183304, Spawn, 14)
	elseif choice == 6 then
		FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_c13548f0.mp3", "The Overlord knows the strength of the ogres; I'd enjoy reminding the others around here.", "threaten", 3218132325, 996755371, Spawn, 14)
	end
end
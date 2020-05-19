--[[
    Script Name    : SpawnScripts/QueensColony/MeriBogfoot.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Meri Bogfoot dialog
    Modified Date  : 2020.04.09
    Modified by    : premierio015
    Notes          : Added dialogues and anims.
--]]

function spawn(NPC)
    hailed(NPC,Spawn)
	EmoteLoop(NPC)
end

function respawn(NPC)
      spawn(NPC)
end


function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	math.randomseed(os.time())
	choice = math.random (1,4)
	str = tostring(choice)
    if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1019.mp3", "Left foot, right foot, spin...", "", 0, 0, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1019.mp3", "I hope my father doesn't see this.", "", 0, 0, Spawn)
	elseif choice == 3 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1019.mp3", "My father runs the bank here over behind Myrrin's tower", "", 0, 0, Spawn)
	else
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1019.mp3", "Left foot, right foot, spin...", "", 0, 0, Spawn)
	end
end

function EmoteLoop (NPC)
    math.randomseed(os.time())
    local choice = math.random(1,5)
	str = tostring(choice)
	if choice == 1 then
    PlayAnimation(NPC, 11298)
	FaceTarget(NPC, 2530054)
    AddTimer(NPC, 5000, "EmoteLoop")	
	elseif choice == 2 then
	PlayAnimation(NPC, 11558)
	FaceTarget(NPC, 2530054)
	AddTimer(NPC, 5000, "EmoteLoop")
	elseif choice == 3 then
	PlayAnimation(NPC, 12235)
	FaceTarget(NPC, 2530054)
	AddTimer(NPC, 5000, "EmoteLoop")
	elseif choice == 4 then
	PlayAnimation(NPC, 11762)
	FaceTarget(NPC, 2530054)
	AddTimer(NPC, 5000, "EmoteLoop")
	else
	PlayAnimation(NPC, 298)
	FaceTarget(NPC, 2530054)
	AddTimer(NPC, 5000, "EmoteLoop")
	end
	end
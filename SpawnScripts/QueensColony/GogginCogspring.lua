--[[
    Script Name    : SpawnScripts/QueensColony/GogginCogspring.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Goggin Cogspring dialog
    Modified Date  : 2020.04.09
    Modiefied by   : premierio015
    Modified Notes : Addded animations and dialogues
--]]
function spawn(NPC)
    hailed(NPC, Spawn)
	EmoteLoop(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	math.randomseed(os.time())
	choice = math.random (1,3)
	str = tostring(choice)
	if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1020.mp3", "Some day I'll get out there and work off this tab I have with Galan.", "", 0, 0, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1020.mp3", "Wooohaw!", "", 0, 0, Spawn)
	elseif choice == 3 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1020.mp3", "It's a party!", "", 0, 0, Spawn)
    end
end

function EmoteLoop(NPC)
    math.randomseed(os.time())
    local choice = math.random(1,2)
	str = tostring(choice)
	if choice == 1 then
	PlayAnimation(NPC, 11150)
	AddTimer(NPC, 7000, "EmoteLoop")
	else
	PlayAnimation(NPC, 20601)
	AddTimer(NPC, 4000, "EmoteLoop")
	end
	end
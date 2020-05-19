--[[
    Script Name    : SpawnScripts/QueensColony/GrakusStonemallet.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Grakus Stonemallet dialog
    Modified Date  : 2020.09.04
	Modified by    : premierio015
	Notes          : Added all dialogues, voiceovers, anims.
--]]
function spawn(NPC)
hailed(NPC, Spawn)
EmoteLoop(NPC)
end

function respawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	math.randomseed(os.time())
	local choice = math.random (1,3)
	str = tostring(choice)
	if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1062.mp3", "The Sapswill stout that we used to get from the goblins has all but disappeared.  We need to fix this problem immediately.", "", 0, 0, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1062.mp3", "I hear there's a  giant octopus out there in the bay.", "", 0, 0, Spawn)
	else
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1062.mp3", "I hear there's a cave on the north of the island. i wonder if there is any good gems in there?", "", 0, 0, Spawn)
	end
end 
	
function EmoteLoop (NPC)
    math.randomseed(os.time())
     choice = math.random(1,5)
	str = tostring(choice)
	if choice == 1 then
	PlayAnimation(NPC, 184)
	AddTimer(NPC, 7000, "EmoteLoop")
	elseif choice == 2 then
	PlayAnimation(NPC, 174)
	AddTimer(NPC, 7000, "EmoteLoop")
	elseif choice == 3 then
	PlayAnimation(NPC, 183)
	AddTimer(NPC, 7000, "EmoteLoop")
	elseif choice == 4 then
	PlayAnimation(NPC, 187)
	AddTimer(NPC, 7000, "EmoteLoop")
	else
	PlayAnimation(NPC, 186)
	AddTimer(NPC, 7000, "EmoteLoop")
	end
end
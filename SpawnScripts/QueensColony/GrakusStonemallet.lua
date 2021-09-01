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
    EmoteLoop(NPC)
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	math.randomseed(os.time())
	local voice = math.random (1,3)
	str = tostring(voice)

        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1062.mp3", "", "", 0, 0, Spawn)

        text = math.random(1,3)
        if text == 1 then
            Say(NPC, "The Sapswill stout that we used to get from the goblins has all but disappeared. We need to fix this problem immediately.")
        elseif text == 2 then
            Say(NPC, "I hear there's a giant octopus out there in the bay.")
        else
            Say(NPC, "I hear there's a cave on the north of the island. I wonder if there is any good gems in there?")	
        end
end 
	
function EmoteLoop (NPC)
    math.randomseed(os.time())
    choice = math.random(1,5)
	str = tostring(choice)

	if choice == 1 then
	    PlayAnimation(NPC, 184)
	elseif choice == 2 then
	    PlayAnimation(NPC, 174)
	elseif choice == 3 then
	    PlayAnimation(NPC, 183)
	elseif choice == 4 then
	    PlayAnimation(NPC, 187)
	else
	    PlayAnimation(NPC, 186)
	end

    AddTimer(NPC, 10000, "EmoteLoop")
end
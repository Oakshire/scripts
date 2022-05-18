--[[
	Script Name		: SpawnScripts/SouthQeynos/AbelardRaleigh.lua
	Script Purpose	: Abelard Raleigh
	Script Author	: Dorbin
	Script Date		: 2022.05.18
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
AddTimer(NPC, 5000, "EmoteLoop")    
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
    FaceTarget(NPC,Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", 0, 0, Spawn)
	end
end

function EmoteLoop(NPC)
    local emoteChoice = MakeRandomInt(1,4)

    if emoteChoice == 1 then
-- ponder
        PlayAnimation(NPC, 12030)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- sniff
        PlayAnimation(NPC, 12329)
        AddTimer(NPC, MakeRandomInt(6000,9000), "EmoteLoop")	
    elseif emoteChoice == 3 then
-- drink
        PlayAnimation(NPC,11422)
        AddTimer(NPC, MakeRandomInt(6000,9000), "EmoteLoop")	

    else
-- tapfoot
        PlayAnimation(NPC, 13056)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    end
end
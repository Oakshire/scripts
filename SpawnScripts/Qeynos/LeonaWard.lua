--[[
	Script Name	: SpawnScripts/SouthQeynos/LeonaWard.lua
	Script Purpose	: Leona Ward <Tailor>
	Script Author	: Dorbin
	Script Date	: 2022.05.09
	Script Notes	: 
--]]
local Arrow = 5526

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
 if GetFactionAmount(Spawn,11) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
    else
	PlayFlavor(NPC, "voiceover/english/merchant_leona_ward/qey_south/leoniaward000.mp3", "", "hello", 3498707221, 1800198471, Spawn)
	if GetQuestStep(Spawn,Arrow)==1 then
	AddConversationOption(conversation, "Your friend Helanni Firewyng would like you to have this trophy.  She wanted to let you know she has accomplished her dream.","Thanks")
	end
	AddConversationOption(conversation, "Sorry, but I don't have time to shop right now.")
	StartConversation(conversation, NPC, Spawn, "Welcome, traveler. Welcome to my shop.  Please, take a look around!")
    end
end

function Thanks(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/merchant_leona_ward/qey_south/leoniaward001.mp3", "", "thanks", 3051695378, 2470682409, Spawn)
	AddConversationOption(conversation, "Happy to help.","Arrow2")
	StartConversation(conversation, NPC, Spawn, "The famous Golden Engraved Arrow!  Only archery's finest receive this reward.  I am pleased to see my friend has accomplished her lifelong dream.  Thank you for letting me know she is doing so well!")
end   

function Arrow2(NPC, Spawn)
    SetStepComplete(Spawn,Arrow,1)
	FaceTarget(NPC, Spawn)
end


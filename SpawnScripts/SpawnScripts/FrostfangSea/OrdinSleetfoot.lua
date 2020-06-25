--[[
	Script Name	: SpawnScripts/FrostfangSea/OrdinSleetfoot.lua
	Script Purpose	: Ordin Sleetfoot 
	Script Author	: theFoof
	Script Date	: 2013.06.11
	Script Notes	: 
--]]

local BelowWaves = 59

local GoodDistraction = 61

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
	spawn(NPC)
end

function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, GoodDistraction) then
		if GetQuestStep(Spawn, GoodDistraction) == 1 then
			AddSpawnAccess(NPC, Spawn)
		end
	elseif HasCompletedQuest(Spawn, GoodDistraction) then
		
	elseif HasCompletedQuest(Spawn, BelowWaves) then
		AddSpawnAccess(NPC, Spawn)
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if GetQuestStep(Spawn, GoodDistraction) == 1 then
		PlayFlavor(NPC, "ordin_sleetfoot/halas/cragged_spine/ordin_sleetfoot001.mp3", "", "", 346156027, 2620260101, Spawn)
		AddConversationOption(conversation, "I am.  Slip into the shadows.  I'll ensure no one realizes you're there.", "Quest1Chat_1")
		AddConversationOption(conversation, "No, I am not ready yet.")
		StartConversation(conversation, NPC, Spawn, "So yer the one who's to be the distraction so I can slip past these creatures, are ye?  Well normally I don't trust strangers, but if Thirin trusts you, then I will as well.  Are ye ready to go?")
	else
	    PlayFlavor(NPC, "", "Shh!  Quiet.  I'm trying to watch for patterns in the orcs' patrols.", "", 0, 0, Spawn)
    end
end

function Quest1Chat_1(NPC, Spawn)
	AddTimer(NPC, 2000, "Step1", 1, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "ordin_sleetfoot/halas/cragged_spine/ordin_sleetfoot002.mp3", "", "", 4202537039, 1639978352, Spawn)
	AddConversationOption(conversation, "Be safe.")
	StartConversation(conversation, NPC, Spawn, "Good, I'll meet you in the Velinoids' cave.  Don't worry about finding me, you'll see me.  Just keep on heading further into the cave.")
end

function Step1(NPC, Spawn)
	SetStepComplete(Spawn, GoodDistraction, 1)
	RemoveSpawnAccess(NPC, Spawn)
end

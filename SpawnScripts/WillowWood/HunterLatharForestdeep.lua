--[[
	Script Name	: SpawnScripts/WillowWood/HunterLatharForestdeep.lua
	Script Purpose	: Hunter Lathar Forestdeep 
	Script Author	: Dorbin
	Script Date	: 2022.02.21    
	Script Notes	: 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/hunter_lathar_forestdeep/qey_village05/100_hunter_woodelf_forestdeep_aoi_d409e2bd.mp3", "I don't know how he snuck past the patrols. If you approach slowly, he may let you touch him.", "", 1614740945, 3996136643, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/hunter_lathar_forestdeep/qey_village05/quests/hunter_forestdeep/hunter_forestdeep.mp3", "", "", 1771449207, 2174692031, Spawn)
	if HasQuest(Spawn, 5484) then
	AddConversationOption(conversation, "Sorry, but I have this letter you from the Forest Ruins.", "Letter")
	end 
	AddConversationOption(conversation, "Sorry to have bothered you. ")
	StartConversation(conversation, NPC, Spawn, "What do you need? I'm very busy.")
end

function Letter(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/hunter_lathar_forestdeep/qey_village05/quests/hunter_forestdeep/hunter_forestdeep000.mp3", "", "", 1811746437, 2116303434, Spawn)
		AddConversationOption(conversation, "Thanks.", "Reward")
	StartConversation(conversation, NPC, Spawn, "Yes, yes, that's fine.  I suppose it would be rude of me not to offer you anything in return. It's not much, but it's something.")
end

function Reward(NPC, Spawn)
    	SetStepComplete(Spawn, 5484, 1)
    end

--[[
	Script Name		:	SpawnScripts/Commonlands/CaptainIsta.lua
	Script Purpose	:	Captain Ista
	Script Author	:	premierio015
	Script Date		:	08/28/2019
	Script Notes	:	
--]]

local  TheTrailOfSlime = 5323

function spawn(NPC)
    ProvidesQuest(NPC, TheTrailOfSlime)
    SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "What a waste of time, standing around and trying to touch everything...Your mother sure raised a dumb one.", "applaud", 1689589577, 4560189, Spawn)
end


function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, TheTrailOfSlime) and not HasCompletedQuest(Spawn, TheTrailOfSlime) then
    local conversation = CreateConversation()
	AddConversationOption(conversation, "What do you need done?", "Option1")
	AddConversationOption(conversation, "I need to leave.")
	StartConversation(conversation, NPC, Spawn, "Glad you could make it. Now how about doing a little something for Freeport?")
	elseif GetQuestStep(Spawn, TheTrailOfSlime) == 1  then
	 PlayFlavor(NPC, "", "What a waste of time, standing around and trying to touch everything...Your mother sure raised a dumb one.", "applaud", 1689589577, 4560189, Spawn)
	elseif GetQuestStep(Spawn, TheTrailOfSlime) == 2  then
	Option2(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, TheTrailOfSlime) then
	PlayFlavor(NPC, "", "You can leave me alone now...", "", 0, 0, Spawn)
end
  end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I think I can do that.", "offer")
		AddConversationOption(conversation, "I need to leave.")
	StartConversation(conversation, NPC, Spawn, "Freeport needs you to follow the trail of slime outside of the Sewer System to the north of here. You will need to slay the oversized sliding lump of refuse known as the Gobbler.")
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, TheTrailOfSlime)
end

function Option2(NPC, Spawn)
    SetStepComplete(Spawn, TheTrailOfSlime, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "No problem.")
	StartConversation(conversation, NPC, Spawn, "Good! It is finally done and I'm sure that the Dark Lord will be happy with my success. That is all I needed, here is your reward and you may leave now.")
end



	
	--[[	
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("Hrmph! What? You expect me to assign a task to a weak little runt like yourself? Get Lost!")
	Dialog.AddOption("I will come back later then.")

	Dialog.Start()

	Say() from this NPC


		Orphaned PlayFlavors
	--]]


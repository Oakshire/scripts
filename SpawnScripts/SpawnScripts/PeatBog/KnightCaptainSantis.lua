--[[
    Script Name    : SpawnScripts/PeatBog/KnightCaptainSantis.lua
    Script Author  : Shatou
    Script Date    : 2020.01.08 03:01:22
    Script Purpose : 
                   : 
--]]

local BOG_SLUDGE_HUNT_QUEST_ID = 514

function spawn(NPC)
	ProvidesQuest(NPC, BOG_SLUDGE_HUNT_QUEST_ID)
end

function respawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	if not HasQuest(Spawn, BOG_SLUDGE_HUNT_QUEST_ID) and not HasCompletedQuest(Spawn, BOG_SLUDGE_HUNT_QUEST_ID) then
		AddConversationOption(conversation, "What kind of trouble is out there?", "Option1")
		AddConversationOption(conversation, "I didn't have any trouble making it this far.")

		StartConversation(conversation, NPC, Spawn, "Good day to you.  I've been hearing reports that the Peat Bog here isn't safe right now.  I hope you didn't have any trouble if you came through this way.")
	end

	if HasQuest(Spawn, BOG_SLUDGE_HUNT_QUEST_ID) then
		if GetQuestStep(Spawn, BOG_SLUDGE_HUNT_QUEST_ID) == 2 then
			SetStepComplete(Spawn, BOG_SLUDGE_HUNT_QUEST_ID, 2)
		
			AddConversationOption(conversation, "It feels good to make the area a little bit safer.")
			StartConversation(conversation, NPC, Spawn, "You are truly valuable to Qeynos.  I'm already receiving optimistic reports that the Bog Sludge are finally under control.  Please accept this reward for a job well done.")
		end
	end
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "A few sludges shouldn't be a problem for me.", "Option2")
	AddConversationOption(conversation, "I don't feel like going into that bog right now.  Maybe another time.  ")
	
	StartConversation(conversation, NPC, Spawn, "The Bog Sludges have swelled in number, spreading like pestilence.  This vermin has become a serious menace to the refugees here.  The Sludges must be exterminated for the safety of the people.  I hope you're not too squeamish for such a job.  ")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	OfferQuest(NPC, Spawn, BOG_SLUDGE_HUNT_QUEST_ID)
	
	AddConversationOption(conversation, "Sounds good.  I'll get right on it.")
	StartConversation(conversation, NPC, Spawn, "Excellent!  Slay several sludges here and report back to me.  I will reward you for your service to Qeynos. ")
end

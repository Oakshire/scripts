--[[
	Script Name	: SpawnScripts/StarcrestCommune/KnightCaptainSantis.lua
	Script Purpose	: Knight-Captain Santis
	Script Author	: Ememjr
	Script Date		: 2017.10.28
	Script Notes	:
--]]




function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
    ProvidesQuest(NPC, 240)
end
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	if not HasQuest(Spawn, 240) and not QuestIsComplete(Spawn , 240) then
       AddConversationOption(conversation, "What kind of trouble is out in the bog?", "Option4")
	end
		if HasQuest(Spawn, 300) then
       AddConversationOption(conversation, "I bring you an urgent message from the Nettleville Garrison.", "Option5")
	end
	if HasQuest(Spawn,240) then
		if not QuestIsComplete(Spawn , 240) then
			if QuestStepIsComplete(Spawn, 240, 1) then
				AddConversationOption(conversation, "I am happy to report that I have eliminated several Bog Sludges at your request.", "Killed")
			end
		end
	end
	StartConversation(conversation, NPC, Spawn, "Good day to you.  I've been hearing reports that the Peat Bog isn't safe right now.  I hope you didn't have any trouble if you came in that way.")
end
function InRange(NPC,Spawn)
	PlayFlavor(NPC, "", "Have you a moment?  We guards could use your assistance!", "beckon", 0, 0, Spawn)
end
function Killed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "It feels good to make the area a little bit safer.","GetReward")
	StartConversation(conversation, NPC, Spawn, "You are truly valuable to Qeynos.  I'm already receiving optimistic reports that the Bog Sludge are finally under control.  Please accept this reward for a job well done.")

end
function GetReward(NPC, Spawn)
	SetStepComplete(Spawn, 240, 2)
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "A few sludges shouldn't be a problem for me.", "Option6")
	StartConversation(conversation, NPC, Spawn, "The Bog Sludges have swelled in number, spreading like pestilence.  This vermin has become a serious menace to the refugees in that region.  The Sludges must be exterminated for the safety of the people.  I hope you're not too squeamish for such a job.  ")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Sounds good.  I'll get right on it.", "Offer")
	StartConversation(conversation, NPC, Spawn, "Excellent!  Go to the Peat Bog, slay several sludges and report back to me.  I will reward you for your service to Qeynos. ")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Phalanx match! I will tell him you accept.")
	StartConversation(conversation, NPC, Spawn, "Let me read that... Ha!  Captain Hastings and his team wish to challenge the Starcrest Garrison to a Phalanx match?  We shall squash them.  Tell him I accept.")
end
function Offer(NPC,Spawn)
	OfferQuest(NPC, Spawn, 240)
end
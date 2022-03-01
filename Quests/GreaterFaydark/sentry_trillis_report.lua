--[[
	Script Name	: Quests/GreaterFaydark/sentry_trillis_report.lua
	Script Purpose	: Handles the quest "Sentry Trillis Report"
	Script Author	: Zcoretri
	Script Date	: 2009.03.01
	
	Zone       : Greater Faydark
	Quest Giver: Matron of the Nursery
	Preceded by: none
	Followed by: Running Off the Grobin Scouts
--]]


function Init(Quest)
	 AddQuestStepChat(Quest, 1, "I should deliver Sentry Trillis' status report to Captain Steelforge. He should be outside Drippy Cave to the west.", 1, ".", 1223, 1140067)
	 AddQuestStepCompleteAction(Quest, 1, "QuestComplete")

end

function Accepted(Quest, QuestGiver, Player)
	 if QuestGiver ~= nil then
	if GetDistance(Player, QuestGiver) < 30 then
	   FaceTarget(QuestGiver, Player)
	    conversation = CreateConversation()
	    PlayFlavor(QuestGiver, "voiceover/english/exp03_questvo2/sentry_trillis/_exp03/exp03_rgn_greater_faydark/sentry_trillis/sentry_trillis003.mp3", "", "", 2868295834, 1763259549, Player)
	    AddConversationOption(conversation, "So long, Sentry Trillis.")
	    StartConversation(conversation, QuestGiver, Player, "Thanks.  The report is a simple 'All Clear' for now, but I thought he would like to know.  So long, " .. GetName(Player) .. ".")
	end
	 end
end

function Declined(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	 UpdateQuestDescription(Quest, "")
	 GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)

end



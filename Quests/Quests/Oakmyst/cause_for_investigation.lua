--[[
	Script Name	: Quests/Oakmyst/cause_for_investigation.lua
	Script Purpose	: Handles the quest, "Cause for Investigation"
	Script Author	: Scatman
	Script Date	: 2009.10.07

	Zone       : Oakmyst Forest
	Quest Giver: Lieutenant Charlin
	Preceded by: Natural Causes? (natural_causes.lua)
	Followed by: A Citizen's Request (a_citizens_request.lua)
--]]


function Init(Quest)
	-- unearthed soil
	 Say(NPC, "This is me talking INit")
	AddQuestStepObtainItem(Quest, 1,  "Lieutenant Charlin would like me to collect soil samples from all around Oakmyst Forest.", 5, 100,  "Charlin has asked that I collect soil samples from the dirt piles that are popping up all around Oakmyst Forest.", 10, 15098)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_GotSoil")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	Say(QuestGiver, "This is me talking try to set spawn to acive")
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin008a.mp3", "", "", 717032559, 738942880, Player)

	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, QuestGiver, Player, "It may be nothing, but it may help us. Thanks for doing this.")

end

function Declined(Quest, QuestGiver, Player)

end


function Step1_Complete_GotSoil(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected some soil samples for Lieutenant Charlin.")

	AddQuestStepChat(Quest, 2, "I need to bring this soil to Lieutenant Charlin.", 1, "Charlin has asked that I collect soil samples from the dirt piles that are popping up all around Oakmyst Forest.", 0, 1950008)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Lieutenant Charlin.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the soil for Charlin.")

	-- remove unearthed soil
	while HasItem(Player, 15098) do
		RemoveItem(Player, 15098)
	end

	UpdateQuestDescription(Quest, "I have gathered the soil samples for Charlin. He hopes something will turn up from the tests.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_GotSoil(Quest, QuestGiver, Player)
	end
end

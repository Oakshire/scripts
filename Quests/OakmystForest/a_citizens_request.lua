--[[
	Script Name	: Quests/Oakmyst/a_citizens_request.lua
	Script Purpose	: Handles the quest, "A Citizen's Request"
	Script Author	: Scatman
	Script Date	: 2009.05.03
	
	Zone       : Oakmyst Forest
	Quest Giver: Lieutenant Charlin
	Preceded by: Cause for Investigation (cause_for_investigation.lua)
	Followed by: An Important Meeting (an_important_meeting.lua)
	Modified   :5/6/2020
	Modified by: Ememjr
	Notes      : Updated NPC ID's
	
	
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Bardrian Vorsuth on the docks in western Oakmyst Forest.", 1, "Lieutenant Charlin has asked that I head to the docks in Oakmyst Forest on his behalf.", 0, 1950060)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SpokeWithBardrian")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin011a.mp3", "", "", 3187068134, 4200320763, Player)
	AddConversationOption(conversation, "I'll return with his information.")
	StartConversation(conversation, QuestGiver, Player, "Bring his news back to me. We'll add it to what we've already got.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_SpokeWithBardrian(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Bardrian Vorsuth.")
	
	AddQuestStepChat(Quest, 2, "I need to bring the news of the machine back to Lieutenant Charlin.", 1, "Lieutenant Charlin has asked that I head to the docks in Oakmyst Forest on his behalf.", 0, 1950008) 
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_SpokeWithCharlin")
end

function Step2_Complete_SpokeWithCharlin(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Lieutenant Charlin.")
	
	AddQuestStep(Quest, 3, "Lieutenant Charlin has asked that I search Oakmyst Forest thoroughly for another machine like the one found on the docks. I should check near water.", 1, 100, "Lieutenant Charlin has asked that I head to the docks in Oakmyst Forest on his behalf.", 0) 
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_FoundMachine")
end

function Step3_Complete_FoundMachine(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have found another machine.")
	
	AddQuestStepChat(Quest, 4, "I need to tell Lieutenant Charlin of my find.", 1, "Lieutenant Charlin has asked that I head to the docks in Oakmyst Forest on his behalf.", 0, 1950008) 
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have spoken to Lieutenant Charlin.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found a mysterious machine in Oakmyst Forest.")
	
	UpdateQuestDescription(Quest, "I found some sort of machinery that someone had set up in Oakmyst Forest. Though its purpose was not clear it was done so covertly and as such was probably an attempt of some sort of environmental sabotage.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_SpokeWithBardrian(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_SpokeWithCharlin(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_FoundMachine(Quest, QuestGiver, Player)
	end
end
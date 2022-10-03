--[[
	Script Name	: Quests/Oakmyst/an_important_meeting.lua
	Script Purpose	: Handles the quest, "An Important Meeting"
	Script Author	: Scatman
	Script Date	: 2009.05.03
	
	Zone       : Oakmyst Forest
	Quest Giver: Lieutenant Charlin
	Preceded by: A Citizen's Request (a_citizens_request.lua)
	Followed by: Clean Up (clean_up.lua)
    Modified   : 5-5-2020
	By         : Ememjr
	Notes      : fixed item id for A Gnollish Contingency Book
	
--]]


function Init(Quest)
AddQuestStepKill(Quest, 1, "I need to interrupt the meeting.", 1, 100, "I need to interrupt the meeting being held on the small hill that overlooks the falls just west of The Western Falls.", 11, 	1950065)
AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledGilrix")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin019a.mp3", "", "", 1345224197, 2287197630, Player)	
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, QuestGiver, Player, "Be safe. They won't appreciate this, heh.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledGilrix(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have interrupted the meeting.")
	
	-- A Gnollish Contingency Book
	SummonItem(Player, 21029, 1)
	
	AddQuestStepChat(Quest, 2, "I need to return to Lieutenant Charlin and tell him what happened.", 1, ".", 0, 1950008) 
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Lieutenant Charlin.")

	UpdateQuestDescription(Quest, "I interrupted the meeting just as planned. It was between a few gnolls and a gnome. The gnome ran off but the gnolls were slain. The information found on them will help deconstruct their plans in Oakmyst Forest.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledGilrix(Quest, QuestGiver, Player)
	end
end
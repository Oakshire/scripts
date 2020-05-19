--[[
	Script Name		:	Quests/FrostfangSea/kestrel_pot_pie.lua
	Script Purpose	:	the quest Kestrel Pot Pie
	Script Author	:	theFoof
	Script Date		:	2013.9.3
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Alice Swamprunner
	Preceded by		:	None
	Followed by		:	None
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "I must collect ice shrooms for Alice's pie.", 5, 100, "I must collect ice shrooms for Alice. I can find the ice shrooms in the cave leading to the Erollis Dock.", 811)
	AddQuestStepCompleteAction(Quest, 1, "GotShrooms")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "alice_swamprunner/halas/new_halas/alice_swamprunner/alice_swamprunner_006.mp3", "", "", 2612887763, 84831884, Player)
	AddConversationOption(conversation, "I shall return to you Alice with the meat and shrooms.")
	StartConversation(conversation, QuestGiver, Player, "Great! Return the ingredients to me at your convenience.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end


function GotShrooms(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the ice shrooms for Alice.")
	AddQuestStepKill(Quest, 2, "I must kill downy kestrels for Alice's pie.", 3, 100, "I must kill downy kestrels for Alice. The kestrels are at the south entrance to New Halas.", 80, 4700122)
	AddQuestStepCompleteAction(Quest, 2, "KilledBirds")
end

function KilledBirds(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "I have killed and collected the downy kestrel meat for Alice.")
	AddQuestStepChat(Quest, 3, "I must speak with Alice Swamprunner in Ravens' Roost.", 1, "I must return the ice shrooms and downy kestrel meat to Alice Swamprunner. Alice is at the restaurant in Ravens' Roost in New Halas.", 0, 4700230)
	AddQuestStepCompleteAction(Quest, 3, "TalkedAlice")
end

function TalkedAlice(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 3, "I have given the ingredients to Alice.")
	AddQuestStep(Quest, 4, "I must try some of Alice's kestrel pot pie.", 1, 100, "Alice has taken the ingredients I collected and prepared her recipe for kestrel pot pie.", 2558)
	AddQuestStepCompleteAction(Quest, 4, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		GotShrooms(Quest, QuestGiver, Player)
	elseif Step == 2 then
		KilledBirds(Quest, QuestGiver, Player)
	elseif Step == 3 then
		TalkedAlice(Quest, QuestGiver, Player)
	end
end
--[[
	Script Name	: Quests/Oakmyst/clean_up.lua
	Script Purpose	: Handles the quest, "Clean Up"
	Script Author	: Scatman
	Script Date	: 2009.10.08
	
	Zone       : Oakmyst Forest
	Quest Giver: Lieutenant Charlin
	Preceded by: An Important Meeting (an_important_meeting.lua)
	Followed by: Reinforcements (reinforcements.lua)
	Modified   : 5/6/2020
	      by   : Ememjr
	    Notes  : updated spawn ID's and quest id's
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Lieutenant Gnar'Sok. I can find him hiding in an alcove just northwest of The Western Falls.", 1, 100, "I need to take out the remaining gnoll lieutenants.", 1220, 1950066)
	AddQuestStepKill(Quest, 2, "I need to kill Lieutenant Chorsun. The path west from Lieutenant Charlin leads to him if I turn north before passing under the bridge.", 1, 100, "I need to take out the remaining gnoll lieutenants.", 1220, 1950038)
	AddQuestStepKill(Quest, 3, "I need to kill Lieutenant Scyn. He is hiding on a rocky hill southeast of Clearwater Pond.", 1, 100, "I need to take out the remaining gnoll lieutenants.", 1220, 1950067)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledGnarSok")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_KilledChorsun")
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_KilledScyn")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin024b.mp3", "", "", 2171842973, 3442277052, Player)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, QuestGiver, Player, "Taking them out will be a huge victory for us here, good luck.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledGnarSok(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain Lieutenant Gnar'Sok.")

	if QuestIsComplete(Player, 211) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end
function Step2_Complete_KilledChorsun(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have slain Lieutenant Chorsun.")

	if QuestIsComplete(Player, 211) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Step3_Complete_KilledScyn(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have slain Lieutenant Scyn.")

	if QuestIsComplete(Player, 211) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Multiple_Steps_Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the three gnoll lieutenants.")

	AddQuestStepChat(Quest, 4, "I need to return to Lieutenant Charlin.", 1, "I need to bring the news of the slain lieutenants back to Lieutenant Charlin.", 0, 1950008) 
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Lieutenant Charlin.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Lieutenant Charlin.")
	
	UpdateQuestDescription(Quest, "I have slain all three of the gnoll lieutenants. With their deaths the Oakmyst Forest should be free of gnollish corruption for some time.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledGnarSok(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_KilledChorsun(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_KilledScyn(Quest, QuestGiver, Player)
	end
end
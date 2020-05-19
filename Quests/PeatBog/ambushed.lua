--[[
	Script Name	: Quests/PeatBog/ambushed.lua
	Script Purpose	: Handles the quest, "Ambushed"
	Script Author	: Scatman
	Script Date	: 2009.05.10
	
	Zone       : The Peat Bog
	Quest Giver: Lieutenant Dawson
	Preceded by: Mysterious Machine (mysterious_machine.lua)
	Followed by: On the Move (on_the_move.lua)
--]]


function Init(Quest)


	AddQuestStep(Quest, 1, "I need to investigate the ambush site west of Two Logs Pond, which is south of the sewer grate.", 1, 100, "Lieutenant Dawson has asked me to investigate three ambush sites.", 0)
	AddQuestStep(Quest, 2, "I need to investigate the ambush site in the north eastern corner of the area east of Two Logs Pond.", 1, 100, "Lieutenant Dawson has asked me to investigate three ambush sites.", 0)
	AddQuestStep(Quest, 3, "I need to investigate the ambush site in the south end of the area east of Two Logs Pond.", 1, 100, "Lieutenant Dawson has asked me to investigate three ambush sites.", 0)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_Site1")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_Site2")
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_Site3")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/quests/dawson/dawson011a.mp3", "", "", 3239354610, 1196418998, Player)
	AddConversationOption(conversation, "You're welcome, and thank you.")
	StartConversation(conversation, QuestGiver, Player, "Thank you for your help, be safe.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_Site1(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have investigated the ambush site near Two Logs Pond.")

	if QuestIsComplete(Player, 217) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Step2_Complete_Site2(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have investigated the ambush site in the area east of Two Logs Pond.")

	if QuestIsComplete(Player, 217) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Step3_Complete_Site3(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have investigated the ambush site in the southern end of the area east of Two Logs Pond.")
	
	if QuestIsComplete(Player, 217) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Multiple_Steps_Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have investigated all three ambush sites.")
	
	-- a gnoll paw
	if not HasItem(Player, 1711) then
		SummonItem(Player, 1711)
		SendMessage(Player, "You receieve [a gnoll paw].", "yellow")
	end

	AddQuestStepChat(Quest, 4, "I need to return to Lieutenant Dawson.", 1, "I need to tell Lieutenant Dawson of what I found at one of the ambush sites.", 0, 1980022) 
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- a gnoll paw
	while HasItem(Player, 1711) do
		RemoveItem(Player, 1711)
	end
	
	UpdateQuestDescription(Quest, "I found evidence of gnolls at one of the ambush sites.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_Site1(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_Site2(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_Site3(Quest, QuestGiver, Player)
	end
end

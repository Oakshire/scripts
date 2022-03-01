--[[
	Script Name	: Quests/PeatBog/a_final_foe.lua
	Script Purpose	: Handles the quest, "A Final Foe"
	Script Author	: Scatman
	Script Date	: 2009.05.10
	
	Zone       : The Peat Bog
	Quest Giver: Lieutenant Dawson
	Preceded by: On the Move (on_the_move.lua)
	Followed by: Reinforcements (reinforcements.lua)
--]]


function Init(Quest)


	AddQuestStepKill(Quest, 1, "I need to kill Dentfang.", 1, 100, "I need to kill Dentfang for Lieutenant Dawson.", 0, 1980127)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledDentFang")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/quests/dawson/dawson019a.mp3", "", "", 2166332707, 347747136, Player)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "He may have bodyguards, but I'm sure you can handle them.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledDentFang(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed Dentfang.")

	AddQuestStepChat(Quest, 2, "I need to return to Lieutenant Dawson.", 1, "I need to kill Dentfang for Lieutenant Dawson.", 0, 1980022) 
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have slain Dentfang. Lieutenant Dawson was very pleased with my work.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledDentFang(Quest, QuestGiver, Player)
	end
end

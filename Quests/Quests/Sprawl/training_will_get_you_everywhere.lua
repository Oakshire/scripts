--[[
	Script Name	: Quests/TheSprawl/training_will_get_you_everywhere.lua
	Script Purpose	: Handles the quest, "Training Will Get You Everywhere"
	Script Author	: Scatman
	Script Date		: 2009.07.25
	
	Zone       : The Sprawl
	Quest Giver: Enforcer Kurdek
	Preceded by: None
	Followed by: Bullying the Bully (bullying_the_bully.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must find Trainer Durbok and ask him how his training of the Giantslayers is progressing.", 1, "I need to speak to Trainer Durbok, who is teaching combat to the Giantslayers.", 0, 1260027)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SpokeWithDurbok")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek020.mp3", "", "", 593639931, 1053980414, Player)
	AddConversationOption(conversation, "I'll be back when I have your information.")
	StartConversation(conversation, QuestGiver, Player, "Trainer Durbok can be found ahead and to the right. Just follow the path to the west and north. You'll pass a whole lot of Giantslayers, but don't let them intimidate you. Remember, you're on official Dreadnaught business!")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_SpokeWithDurbok(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken to Trainer Durbok, who is displeased with the progress of the Giantslayers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken to Trainer Durbok and must tell Enforcer Kurdek what I have learned.")
	
	AddQuestStepChat(Quest, 2, "I should return to Enforcer Kurdek near the gate to Big Bend.", 1, "I must return to Enforcer Kurdek with my report.", 0, 1260006)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have returned to Enforcer Kurdek and told him what I learned from Trainer Durbok.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have reported back to Enforcer Kurdek.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I spoke with Trainer Durbok, who feels that the Giantslayers are not focused enough on their training. He feels that their leader, Brutemaster Tarden, is responsible for this failing. Enforcer Kurdek has been notified and is none too happy about it.")
end

function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		Step1_Complete_SpokeWithDurbok(Quest, QuestGiver, Player)
	end
end
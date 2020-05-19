--[[
	Script Name	: Quests/TheSprawl/bullying_the_bully.lua
	Script Purpose	: Handles the quest, "Bullying the Bully"
	Script Author	: Scatman
	Script Date	: 2009.07.25
	
	Zone       : The Sprawl
	Quest Giver: Enforcer Kurdek
	Preceded by: Training Will Get You Everywhere (training_will_get_you_everywhere.lua)
	Followed by: Investigating the Black Magi (investigating_the_black_magi.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I should confront Brutemaster Tarden and make him shape up.", 1, "I should find Brutemaster Tarden and show him who's boss.", 0, 1260044)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SpokeWithTarden")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek025.mp3", "", "point", 3099557772, 3849829090, Player)
	AddConversationOption(conversation, "I'll do it!")
	StartConversation(conversation, QuestGiver, Player, "Use whatever means are necessary to teach him a lesson. Don't be afraid to push him around, because all these Giantslayers understand is violence. Now get going!")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_SpokeWithTarden(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I intimidated Brutemaster Tarden into doing a better job.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I cornered Brutemaster Tardin and roughed him up a bit.")
	
	AddQuestStepChat(Quest, 2, "I should return to Enforcer Kurdek near the gate to Big Bend.", 1, "I should return to Enforcer Kurdek and tell him my task was a success.", 0, 1260006)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have returned to Enforcer Kurdek.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Enforcer Kurdek is pleased that I taught Brutemaster Tarden a lesson.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I confronted the leader of the Giantslayers, a barbarian named Brutemaster Tarden. He didn't show me much respect, but after using Dreadnaught tactics to rough him up a bit, he wisened up. Enforcer Kurdek seemed very pleased with my performance.")
end

function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		Step1_Complete_SpokeWithTarden(Quest, QuestGiver, Player)
	end
end
--[[
	Script Name	: Quests/TheSprawl/investigating_the_black_magi.lua
	Script Purpose	: Handles the quest, "Investigating the Black Magi"
	Script Author	: Scatman
	Script Date	    : 2009.07.26
	
	Zone       : The Sprawl
	Quest Giver: Enforcer Kurdek
	Preceded by: Bullying the Bully (bullying_the_bully.lua)
	Followed by: Dominating the Dervish (dominating_the_dervish.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I should look for a ratonga named Tikkeri and trick her into revealing information about the Black Magi.", 1, "I should seek a ratonga named Tikkeri deep inside the Black Magi area.", 0, 1260028)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SpokeWithTikkeri")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek030.mp3", "", "", 903390823, 1009474399, Player)
	AddConversationOption(conversation, "Do you have any suggestions on how I could get her to trust me?", "dlg_27_5")
	AddConversationOption(conversation, "This sounds like a lost cause.")
	StartConversation(conversation, QuestGiver, Player, "Far back among the burned-out houses they inhabit is one of their leaders, a rat named Tikkeri. Find her and see if she'll talk to you. The Black Magi are extremely secretive, so I'm not sure if Tikkeri will trust you.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_SpokeWithTikkeri(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found Arcanist Tikkeri and learned a clue about some organization called 'the Marked.'")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Arcanist Tikkeri and found out about some organization called 'the Marked.'")
	
	AddQuestStepChat(Quest, 2, "I should return to Enforcer Kurdek near the gate to Big Bend.", 1, "I should return to Enforcer Kurdek and tell him what I learned.", 0, 1260017)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have reported back to Enforcer Kurdek.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have reported back to Enforcer Kurdek.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I found Arcanish Tikkeri deep inside the Sprawl and tried to trick her by pretending that I had information about some kind of wheel. She saw through my plan, but not before I found out about some organization called 'the Marked.' I let Enforcer Kurdek know what I found out, and he will let the Dreadnaughts know so that the matter can be investigated more fully.")
end

function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		Step1_Complete_SpokeWithTikkeri(Quest, QuestGiver, Player)
	end
end
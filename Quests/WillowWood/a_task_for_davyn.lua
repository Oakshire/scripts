--[[
	Script Name	: Quests/WillowWood/a_task_for_davyn.lua
	Script Purpose	: Handles the quest, "A Task for Davyn"
	Script Author	: Scatman
	Script Date	: 2009.01.17
	
	Zone       : The Willow Wood
	Quest Giver: Davyn Thornbranch
	Preceded by: Tribute Leaves (tribute_leaves.lua)
	Followed by: Tribute Flowers (tribute_flowers.lua)
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Davyn mentioned that Taval Zane, an inn patron, was the most recent person to report seeing the rabid wolf. I should start by speaking with him in the in.", 1, "Davyn has told me of reports of a rabid wolf in the Willow Wood. He has asked that I find it and put it out of its misery before anyone is harmed.", 0, 2370009)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_TalkedToTaval")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/davyn_thornbranch/qey_village05/quests/davyn_thornbranch/davyn_thornbranch023.mp3", "", "", 2446328740, 3651016951, Player)
	AddConversationOption(conversation, "No problem.")
	StartConversation(conversation, QuestGiver, Player, "Thank you for looking into this matter.  Oh! If you have not already done so, you can get lodgings at the inn by speaking with Innkeeper Yeoni.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_TalkedToTaval(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Taval said he saw the wolf run toward the scribe's shop.")
	
	AddQuestStepChat(Quest, 2, "I should speak to Jana Windstream outside the scribe shop.", 1, "Davyn has told me of reports of a rabid wolf in the Willow Wood. He has asked that I find it and put it out of its misery before anyone is harmed.", 0, 2370024)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_TalkedToJana")
end

function Step2_Complete_TalkedToJana(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Jana said the wolf was probably after something in the cart.")
	
	AddQuestStep(Quest, 3, "I should search the cart Jana mentioned. She said it was at the northern edge of the scribe shop.", 1, 100, "Davyn has told me of reports of a rabid wolf in the Willow Wood. He has asked that I find it and put it out of its misery before anyone is harmed.", 0) 
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_SearchedCrate")
end

function Step3_Complete_SearchedCrate(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I found wolf tracks.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found wolf tracks.")
	
	AddQuestStepKill(Quest, 4, "I should follow the wolf tracks that lead eastward up the hill behind the scribe's shop.", 1, 100, "Some wolf tracks lead east of the scribe's shop from the cart. Where there are tracks, there may be a wolf.", 0, 2370107)
	AddQuestStepCompleteAction(Quest, 4, "Step4_Complete_KilledWolf")
end

function Step4_Complete_KilledWolf(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "The rabid wolf has been slain.")
	UpdateQuestTaskGroupDescription(Quest, 2, "The rabid wolf has been slain.")

	AddQuestStepChat(Quest, 5, "I must speak with Davyn.", 1, "Now that the wolf has been slain, I need to speak with Davyn and then Aelis.", 0, 2370033)
	AddQuestStepCompleteAction(Quest, 5, "Step5_Complete_TalkedToDavyn")
end

function Step5_Complete_TalkedToDavyn(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I spoke to Davyn.")

	AddQuestStepChat(Quest, 6, "I need to speak with Aelis now that I have done a task for Davyn.", 1, "Now that the wolf has been slain, I need to speak with Davyn and then Aelis.", 0, 2370038)
	AddQuestStepCompleteAction(Quest, 6, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have spoken with Aelis.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have spoken with Davyn and Aelis.")
	UpdateQuestDescription(Quest, "I have slain the rabid wolf that was living in the Willow Wood as Davyn Thornbranch requested.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_TalkedToTaval(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_TalkedToJana(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_SearchedCrate(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4_Complete_KilledWolf(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5_Complete_TalkedToDavyn(Quest, QuestGiver, Player)
	end
end
--[[
	Script Name	: Quests/SunkenCity/taking_back_from_the_blackshields.lua
	Script Purpose	: Handles the quest, "Taking Back from the Blackshields"
	Script Author	: Scatman
	Script Date	    : 2009.07.28
	
	Zone       : Sunken City
	Quest Giver: Investigator Curfield
	Preceded by: Finding the Investigator (finding_the_investigator)
	Followed by: Finding the Shrine (finding_the_shrine.lua)
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "I should examine the barrels I see near the Blackshield pirates.", 1, 100, "I need to search barrels near the Blackshields to find the stolen research for Curfeld.", 2285)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_FoundBarrel")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/investigator_curfeld/fprt_adv01_sunken/investigator_curfeld008.mp3", "", "", 2335171554, 1884234984, Player)
	AddConversationOption(conversation, "I will watch my back.")
	StartConversation(conversation, QuestGiver, Player, "My observers tell me that the Blackshields are concealing stolen goods in the old wooden barrels scattered about to the north. Be careful, though. They're an unruly bunch that won't hesitate to attack someone they think might be after their ill-gotten gain.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_FoundBarrel(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found the research notes inside a barrel.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the stolen research materials inside a barrel.")

	AddQuestStepChat(Quest, 2, "I must return to Investigator Curfeld.", 1, "I should take the stolen research back to Investigator Curfeld.", 0, 1240083)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have returned to Investigator Curfeld.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned the research to Investigator Curfeld.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I found Investigator Curfeld's stolen research inside one of the Blackshields' barrels and have returned the papers to Curfeld. Maybe now he won't be so curt with me.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_FoundBarrel(Quest, QuestGiver, Player)
	end
end
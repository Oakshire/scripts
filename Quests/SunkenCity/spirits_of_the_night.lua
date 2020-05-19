--[[
	Script Name	: Quests/SunkenCity/spirits_of_the_night.lua
	Script Purpose	: Handles the quest, "Spirits of the Night"
	Script Author	: Scatman
	Script Date	    : 2009.07.28
	
	Zone       : Sunken City
	Quest Giver: Inquisitor Thorson
	Preceded by: A Flowing Conversation (a_flowing_conversation.lua)
	Followed by: Cataloging Local Critters (cataloging_local_critters.lua)
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I should defeat four undead creatures to obtain their spectral essences.", 4, 100, "I must search the Sunken City by night and collect the spectral essences of the undead that haunt this place.", 2515, 1240015, 1240012, 1240103, 1240028, 1240017, 1240030, 1240018, 1240135, 1240011, 1240016, 1240049, 1240060, 1240035, 1240059, 1240036, 1240054, 1240048, 1240053, 1240046, 1240026, 1240027, 1240034, 1240021, 1240022, 1240024, 1240070, 1240056, 1240112, 1240104, 1240045, 1240107, 1240040, 1240132, 1240038, 1240063, 1240144, 1240050, 1240061, 1240051, 1240146, 1240052, 1240057, 1240062, 1240108, 1240058, 1240109)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledSkeletons")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I will return.")
	StartConversation(conversation, QuestGiver, Player, "The undead walk just ahead, though some lurk a bit farther in. Remember, more of these ghastly creatures can be found after night falls. Return to me when you have their essences.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledSkeletons(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have obtained four spectral essences from the undead.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have defeated undead creatures and collected their spectral essences.")
	
	AddQuestStepChat(Quest, 2, "I should take the spectral essences to Inquisitor Thorson.", 1, "I need to return to Inquisitor Thorson and give him the essences.", 0, 1240007)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have returned to Inquisitor Thorson.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I told Thorson that I spoke to the strange iksar named Yarr.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I have obtained the essences of four undead beings in the Sunken City. It is my hope that studying these essences can help Investigator Thorson uncover the mysteries of this haunted place.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledSkeletons(Quest, QuestGiver, Player)
	end
end
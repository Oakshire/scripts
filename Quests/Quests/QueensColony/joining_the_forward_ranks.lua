--[[
    Script Name    : Quests/QueensColony/joining_the_forward_ranks.lua
    Script Author  : Zcoretri
    Script Date    : 2015.09.04
    Script Purpose : Handles the quest "Joining the Forward Ranks"

        Zone       : The Queen's Colony
        Quest Giver: Murrar Shar
        Preceded by: Into the Tainted Forest (into_the_tainted_forest.lua)
        Followed by: The Source of Evil (the_source_of_evil.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Find Cleric Mara'Vaen at the head of Dead Canyon to the west past Sunset Meadow.", 1, "Find Cleric Mara'Vaen in the Dead Canyon to the west of the colony past Sunset Meadow.", 0, 2530111)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talkedToCleric")
end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(NPC, Spawn)
			conversation = CreateConversation()
			PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar034.mp3", "", "", 682752455, 1067974299)
			AddConversationOption(conversation, "I'll head there now.")
			StartConversation(conversation, QuestGiver, Player, "She can be found at the head of Dead Canyon to the west.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)

end

function step1_complete_talkedToCleric(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I talked with Cleric Mara'Vaen, She already knew of my coming.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I talked with Cleric Mara'Vaen, She already knew of my coming.")
	AddQuestStep(Quest, 2, "Pull lost scouts back to Cleric Mara'Vaen from Dead Canyon.", 3, 100, "Cleric Mara'Vaen thinks that she can resurrect some of the scouts that were consumed by evil. I need to somehow get them back to Mara'Vaen and she will attempt the resurrection.", 2516) 
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_pulledScouts")
end

function step2_complete_pulledScouts(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I pulled the lost scouts back To Cleric Mara'Vaen and she was able to resurrect them.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I pulled the lost scouts back To Cleric Mara'Vaen and she was able to resurrect them.")
	AddQuestStepChat(Quest, 3, "Talk to Cleric Mara'Vaen.", 1, "I need to talk to Mara'Vaen now that the scouts have been resurrected.", 0, 2530111)
	AddQuestStepCompleteAction(Quest, 3, "step3_complete_talkedToMara")
end

function step3_complete_talkedToMara(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I talked to Cleric Mara'Vaen.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I talked to Cleric Mara'Vaen and she informed me of the Morak that have risen from the dead.")
	AddQuestStepKill(Quest, 4, "Kill Morak devourers to the north in Dead Canyon.", 4, 100, "Cleric Mara'Vaen informed me of a breed of wolves that was once cleansed from the island. The evil that resides now has risen them from the dead and they now feed again. They are blocking the path of the scouts to get to the Abandoned Way, so I need to clear the way.", 142, 2530015) 
	AddQuestStepCompleteAction(Quest, 4, "step4_complete_killedMorak")
end


function step4_complete_killedMorak(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I cleared the way for the scouts to get to the Abandoned Village.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I cleared the way for the scouts to get to the Abandoned Village.")
	AddQuestStepChat(Quest, 5, "Return to Cleric Mara'Vaen.", 1, "I killed the Morak Devourers and I should return to Cleric Mara'Vaen.", 0, 2530111)
	AddQuestStepCompleteAction(Quest, 5, "questComplete")
end

function questComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I was able to help Cleric Mara'Vaen to resurrect some of the fallen scouts. I then cleared the way through the Morak so that the scouts could push through to the Abandoned Village. Cleric Mara'Vaen rewarded me for my assistance.")
	GiveQuestReward(Quest, Player)  
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_talkedToCleric(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_pulledScouts(Quest, QuestGiver, Player)
	elseif Step == 3 then
		step3_complete_talkedToMara(Quest, QuestGiver, Player)
	elseif Step == 4 then
		step4_complete_killedMorak(Quest, QuestGiver, Player)
	end
end


--[[
    Script Name    : Quests/QueensColony/into_the_tainted_forest.lua
    Script Author  : Zcoretri
    Script Date    : 2015.09.04
    Script Purpose : Handles the quest "Into the Tainted Forest"

        Zone       : Queen's Colony
        Quest Giver: 
        Preceded by: A Presence of Evil (a_presence_of_evil.lua)
        Followed by: Joining the Forward Ranks (joining_the_forward_ranks.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Seek out Predator Sha'dur in the Tainted Forest. Head west into the Sunset Meadow and then north up the hill.", 1, "I need to seek out Predator Sha'dur in the Tainted Forest. He is collecting tainted wildlife samples and may need my help. The Tainted Forest can be found north up the hill from the Sunset Meadow.", 0, 2530108)
	AddQuestStepCompleteAction(Quest, 1, "step1_completed_talkedToPredator")
end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			conversation = CreateConversation()
			AddConversationOption(conversation, "Of course.")
			StartConversation(conversation, QuestGiver, Player, "Thank you for the help.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)

end

function step1_completed_talkedToPredator(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found Predator Sha'dur. He was distraught about losing his bow and arrows.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Predator Sha'dur. He was distraught about losing his bow and arrows.")
	AddQuestStepKill(Quest, 2, "One of the nearby Sapswill tappers should have Sha'dur's bow.", 1, 25, "Predator Sha'dur is down on his luck and has lost his bow and arrows. I am to find the goblins that took his bow and get it back through any means necessary.", 629, 2530021) 
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_killedTapper")
end

function step2_complete_killedTapper(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I was able to reclaim Sha'dur's Bow from a group of goblins in the Tainted Forest.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I was able to reclaim Sha'dur's Bow from a group of goblins in the Tainted Forest.")
	AddQuestStepChat(Quest, 3, "Return the bow to Predator Sha'dur.", 1, "I found Sha'dur's bow off a nearby Sapswill tapper. I should return the bow to him.", 0, 2530108)
	AddQuestStepCompleteAction(Quest, 3, "step3_completed_talkedToPredator")
end

function step3_completed_talkedToPredator(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I returned Sha'dur his lost bow.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I returned Sha'dur his lost bow.")
	AddQuestStepObtainItem(Quest, 4,  "Search the wood near the spider den in the Tainted Forest. The den is to the southeast within the forest.", 3, 100,  "I should find some wood suitable for arrows to replace the ones Sha'dur lost. Sha'dur says he saw some piles of sticks to the east in the Tainted Forest near a large spider den.", 2359,  2394)
	AddQuestStepCompleteAction(Quest, 4, "step4_complete_gotSticks")
end

function step4_complete_gotSticks(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I gathered enough piles of sticks to provide enough wood for Sha'dur to make new arrows.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I gathered enough piles of sticks to provide enough wood for Sha'dur to make new arrows.")
	AddQuestStepChat(Quest, 5, "Take the wood back to Predator Sha'dur.", 1, "I need to take the wood back to Predator Sha'dur.", 0, 2530108)
	AddQuestStepCompleteAction(Quest, 5, "step5_complete_talkedToPredator")
end

function step5_complete_talkedToPredator(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I gathered enough piles of sticks to provide enough wood for Sha'dur to make new arrows.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I gathered enough piles of sticks to provide enough wood for Sha'dur to make new arrows.")
	AddQuestStepChat(Quest, 6, "Take the samples back to Murrar Shar.", 1, "Predator Sha'dur was able to collect a few samples before he lost his gear. I need to take these samples back to Murrar Shar.", 0, 2530076)
	AddQuestStepCompleteAction(Quest, 6, "step6_complete_talkedToMurrar")
end

function step6_complete_talkedToMurrar(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave Murrar Shar the samples.")
	UpdateQuestDescription(Quest, "I found Predator Sha'dur in the Tainted Forest. He was distraught about being attacked and losing his bow and arrows. I helped him to reclaim his bow and then gathered some sticks for use in making some new arrows. I then returned to Murrar Shar with some samples from the tainted wildlife.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_completed_talkedToPredator(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_killedTapper(Quest, QuestGiver, Player)
	elseif Step == 3 then
		step3_completed_talkedToPredator(Quest, QuestGiver, Player)
	elseif Step == 4 then
		step4_complete_gotSticks(Quest, QuestGiver, Player)
	elseif Step == 5 then
		step5_complete_talkedToPredator(Quest, QuestGiver, Player)
	end
end
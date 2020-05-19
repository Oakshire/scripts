--[[
    Script Name    : Quests/QueensColony/doggone_it.lua
    Script Author  : Zcoretri
    Script Date    : 2015.09.05
    Script Purpose : Handles the quest "Doggone It!"

        Zone       : QueensColony
        Quest Giver: a lost scout
        Preceded by: None
        Followed by: A Diplomatic Mission (a_diplomatic_mission.lua)
--]]

local DoggoneIt = 165

function Init(Quest)
	-- Torn Scout Pants
	AddQuestStepKill(Quest, 1, "I need to clear out the Morak devourers near the Dead Canyon.", 5, 100, "A Qeynosian Scout has asked me to help him rid the Colony of the ferocious hounds known as Moraks.", 1222, 2530015)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedMoraks")
end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			conversation = CreateConversation()
			
			AddConversationOption(conversation, "Well Okay.")
			StartConversation(conversation, QuestGiver, Player, "If they come back, you know where you'll find me -- up in this tree!")
		end
	end
end

function Declined(Quest, QuestGiver, Player)

end

function step1_complete_killedMoraks(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've removed the Morak devourer menace.")
	
	AddQuestStepChat(Quest, 2, "I should tell the lost Qeynosian scout to run while he still can!", 1, "A Qeynosian Scout has asked me to help him rid the Colony of the ferocious hounds known as Moraks.", 0, 2530197)
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_talkedToScout")
end

function step2_complete_talkedToScout(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've spoken with the Qeynosian scout.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've helped the Qeynosian scout by clearing out the Moraks.")
	
	numMoraks = math.random(4, 6)
	
	AddQuestStepLocation(Quest, 3, "Explore the Abondoned Village.", 80, "The Qeynosian scout is too terrified of the Morak to continue his mission forward and has asked me to do some unofficial scouting.", 0, 200.33, 0.01, -183.14)
	AddQuestStepLocation(Quest, 4, "Explore Sapswill Hill.", 80, "The Qeynosian scout is too terrified of the Morak to continue his mission forward and has asked me to do some unofficial scouting.", 0, 148.54, 5.53, -153.11)
	AddQuestStepKill(Quest, 5, "Clear away more Moraks.", numMoraks, 100, "The Qeynosian scout is too terrified of the Morak to continue his mission forward and has asked me to do some unofficial scouting.", 1222, 2530015)
	AddQuestStepCompleteAction(Quest, 3, "step3_complete_exploredVillage")
	AddQuestStepCompleteAction(Quest, 4, "step4_complete_exploredHill")
	AddQuestStepCompleteAction(Quest, 5, "step5_complete_killedMoraks")
end

function step3_complete_exploredVillage(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "Explored the Abandoned Village.")
	
	if QuestIsComplete(Player, DoggoneIt) then
		multiple_steps_complete(Quest, QuestGiver, Player)
	end
end

function step4_complete_exploredHill(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "Explored Sapswill Hill.")
	
	if QuestIsComplete(Player, DoggoneIt) then
		multiple_steps_complete(Quest, QuestGiver, Player)
	end
end

function step5_complete_killedMoraks(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "Cleared away more Moraks.")
	
	if QuestIsComplete(Player, DoggoneIt) then
		multiple_steps_complete(Quest, QuestGiver, Player)
	end
end

function multiple_steps_complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "I've done a bit of scouting ahead and find that this area is teeming with Moraks.")
	
	AddQuestStepChat(Quest, 6, "Tell the lost Qeynosian scout about the abundant Moraks in the area.", 1, "The lost Qeynosian scout will be dismayed when he hears my report.", 0, 2530197)
	AddQuestStepCompleteAction(Quest, 6, "step6_complete_talkedToScout")
end

function step6_complete_talkedToScout(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I've delivered the bad news to the Qeynosian scout.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've delivered the bad news to the Qeynosian scout.")
	
	AddQuestStepChat(Quest, 7, "This package must be given to the Sapswill soothsayer at the Last Stand.", 1, "As a diplomatic gesture, I need to take this package to the Sapswill soothsayer.", 0, 2530037)
	AddQuestStepCompleteAction(Quest, 7, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "The lost Qeynosian scout will have a difficult time if his work takes him through the Sapswill Village with any frequency; the place is full of Moraks! Though I cleared a path for him, there are many more Moraks. Hopefully, my new friend will be able to overcome his fears and continue scouting on behalf of Qeynos. To further help him, I played diplomat-in-training and visited the Sapswill soothsayer.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killedMoraks(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_talkedToScout(Quest, QuestGiver, Player)
	elseif Step == 3 then
		step3_complete_exploredVillage(Quest, QuestGiver, Player)
	elseif Step == 4 then
		step4_complete_exploredHill(Quest, QuestGiver, Player)
	elseif Step == 5 then
		step5_complete_killedMoraks(Quest, QuestGiver, Player)
	elseif Step == 6 then
		step6_complete_talkedToScout(Quest, QuestGiver, Player)
	end
end
--[[
    Script Name    : Quests/QueensColony/a_diplomatic_mission.lua
    Script Author  : Zcoretri
    Script Date    : 2015.09.05
    Script Purpose : Handles the quest "A Diplomatic Mission"

        Zone       : Queen's Colony
        Quest Giver: a Sapswill soothsayer
        Preceded by: Doggone It! (doggone_it.lua)
        Followed by: None
--]]

local ADiplomaticMission = 166

function Init(Quest)
    -- Diplomat's Badge
  
    AddQuestStepChat(Quest, 1, "Greet a musician.", 1, "The Sapswill soothsayer said I need to get the members of their community. Guess it's all part of the diplomatic stuff.", 0, 2530226)
    AddQuestStepChat(Quest, 2, "Greet an incapacitated Sapswill.", 1, "The Sapswill soothsayer said I need to get the members of their community. Guess it's all part of the diplomatic stuff.", 0, 2530230)
    AddQuestStepChat(Quest, 3, "Greet a seated Sapswill.", 1, "The Sapswill soothsayer said I need to get the members of their community. Guess it's all part of the diplomatic stuff.", 0, 2530036)
    AddQuestStepChat(Quest, 4, "Greet an active Sapswill.", 1, "The Sapswill soothsayer said I need to get the members of their community. Guess it's all part of the diplomatic stuff.", 0, 2530228)
    AddQuestStepChat(Quest, 5, "Greet a happy Sapswill.", 1, "The Sapswill soothsayer said I need to get the members of their community. Guess it's all part of the diplomatic stuff.", 0, 2530229)
    AddQuestStepChat(Quest, 6, "Greet Durg.", 1, "The Sapswill soothsayer said I need to get the members of their community. Guess it's all part of the diplomatic stuff.", 0, 2530035)
    AddQuestStepChat(Quest, 7, "Greet Gonk.", 1, "The Sapswill soothsayer said I need to get the members of their community. Guess it's all part of the diplomatic stuff.", 0, 2530034)
	
    AddQuestStepCompleteAction(Quest, 1, "step1_complete_greetedMusician")
    AddQuestStepCompleteAction(Quest, 2, "step2_complete_greetedIncapacitated")
    AddQuestStepCompleteAction(Quest, 3, "step3_complete_greetedSeated")
    AddQuestStepCompleteAction(Quest, 4, "step4_complete_greetedActive")
    AddQuestStepCompleteAction(Quest, 5, "step5_complete_greetedHappy")
    AddQuestStepCompleteAction(Quest, 6, "step6_complete_greetedDurg")
    AddQuestStepCompleteAction(Quest, 7, "step7_complete_greetedGonk")
end

function Accepted(Quest, QuestGiver, Player)
    if QuestGiver ~= nil then
	if GetDistance(Player, QuestGiver) < 30 then
	    FaceTarget(QuestGiver, Player)
	    conversation = CreateConversation()
		
            PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_sapswill_soothsayer/tutorial_island02_revamp/quests/sapswill_soothsayer/sapswill_soothsayer011.mp3", "", "nod", 2132440732, 232283022, Spawn)
	    AddConversationOption(conversation, "To long life!")
	    StartConversation(conversation, QuestGiver, Player, "To long life, and happy friendships!")
	end
    end
end

function Declined(Quest, QuestGiver, Player)

end

function step1_complete_greetedMusician(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I've greeted a Sapswill musician.")
	
    if QuestIsComplete(Player, ADiplomaticMission) then
	 multiple_steps_complete(Quest, QuestGiver, Player)
    end
end

function step2_complete_greetedIncapacitated(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "Greeted a passed out Sapswill.")
	
    if QuestIsComplete(Player, ADiplomaticMission) then
	 multiple_steps_complete(Quest, QuestGiver, Player)
    end
end

function step3_complete_greetedSeated(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 3, "Greeted a leisurely Sapswill.")
	
    if QuestIsComplete(Player, ADiplomaticMission) then
	 multiple_steps_complete(Quest, QuestGiver, Player)
    end
end

function step4_complete_greetedActive(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 4, "Greeted a frenzied dancer.")
	
    if QuestIsComplete(Player, ADiplomaticMission) then
	 multiple_steps_complete(Quest, QuestGiver, Player)
    end
end

function step5_complete_greetedHappy(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 5, "Greeted a very happy Sapswill.")
	
    if QuestIsComplete(Player, ADiplomaticMission) then
	 multiple_steps_complete(Quest, QuestGiver, Player)
    end
end

function step6_complete_greetedDurg(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 6, "I've greeted Durg.")
	
    if QuestIsComplete(Player, ADiplomaticMission) then
	 multiple_steps_complete(Quest, QuestGiver, Player)
    end
end

function step7_complete_greetedGonk(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 7, "I've greeted Gonk.")
	
    if QuestIsComplete(Player, ADiplomaticMission) then
	 multiple_steps_complete(Quest, QuestGiver, Player)
    end
end

function multiple_steps_complete(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I've greeted as many Sapswills as I could.")
	
    AddQuestStepChat(Quest, 8, "Pay respects to High Chieftain Grexx.", 1, "Now that I've introduced myself to several Sapswill goblins, I should pay my respects to High Chieftain Grexx.", 0, 2530038)
    AddQuestStepCompleteAction(Quest, 8, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
    UpdateQuestDescription(Quest, "I greeted many of the Sapswills, including their High Chieftan Grexx. They seem like such a harmless bunch; it's hard to imagine that anyone would want to turn them from their simple ways.")
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	 step1_complete_greetedMusician(Quest, QuestGiver, Player)
    elseif Step == 2 then
	 step2_complete_greetedIncapacitated(Quest, QuestGiver, Player)
    elseif Step == 3 then
	 step3_complete_greetedSeated(Quest, QuestGiver, Player)
    elseif Step == 4 then
	 step4_complete_greetedActive(Quest, QuestGiver, Player)
    elseif Step == 5 then
	 step5_complete_greetedHappy(Quest, QuestGiver, Player)
    elseif Step == 6 then
	 step6_complete_greetedDurg(Quest, QuestGiver, Player)
    elseif Step == 7 then
	 step7_complete_greetedGonk(Quest, QuestGiver, Player)
    end
end


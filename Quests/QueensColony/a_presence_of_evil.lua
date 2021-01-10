--[[
    Script Name    : Quests/QueensColony/a_presence_of_evil.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Handles the quest, "A Presence of Evil"
         Modified  : 2017.04.17
        Modified by: Ememjr
              Note : Quest step 3 complete changed from AddQuestStep to AddQuestStepChat, was causing a quest listing erroro in journal
        Zone       : The Queen's Colony
        Quest Giver: Murrar Shar
        Preceded by: The Art of Combat
        Followed by: Into the Tainted Forest
--]]

function Init(Quest)
    AddQuestStepChat(Quest, 1, "Report to Sergeant Haggus outside the west archway.", 1, "I need to report to Sergeant Haggus outside the west archway. He should have some tasks for me to help the colony.", 0, 2530078)
    AddQuestStepCompleteAction(Quest, 1, "step1_complete_talkToHaggus")
end

function Accepted(Quest, QuestGiver, Player)
    if QuestGiver ~= nil then
        if GetDistance(Player, QuestGiver) < 30 then
	    FaceTarget(QuestGiver, Player)
	    conversation = CreateConversation()

            PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar032.mp3", "", "", 80247345, 2680267873, Player)
	    AddConversationOption(conversation, "Thanks.")
	    StartConversation(conversation, QuestGiver, Player, "Good luck, " .. GetName(Player) .. ".")
	end
    end
end

function Declined(Quest, QuestGiver, Player)

end

function step1_complete_talkToHaggus(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I reported to Sergeant Haggus and have been assigned my first duty.")
    UpdateQuestTaskGroupDescription(Quest, 1, "I reported to Sergeant Haggus and have been assigned my first duty.")
	
    AddQuestStepKill(Quest, 2, "Kill tainted Sapswill invaders. They are attacking the barricades.", 3, 100, "Sergeant Haggus and the other defenders need help defending the colony. I should help fend off the attacking goblin horder.", 611, 2530085) 
    AddQuestStepCompleteAction(Quest, 2, "step2_complete_killedInvaders")
end

function step2_complete_killedInvaders(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I was able to help fend off the attacking goblins.")
    UpdateQuestTaskGroupDescription(Quest, 2, "I was able to help fend off the attacking goblins.")
    AddQuestStepChat(Quest, 3, "Return to Sergeant Haggus.", 1, "I helped defend the colony and should return to Segeant Haggus to see if there is anything else I can do.", 0, 2530078)
    AddQuestStepCompleteAction(Quest, 3, "step3_complete_talkToHaggus")
end

function step3_complete_talkToHaggus(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 3, "I returned to Sergeant Haggus.")
    UpdateQuestTaskGroupDescription(Quest, 3, "I returned to Sergeant Haggus.")
    AddQuestStepChat(Quest, 4, "I should search past the barricades in Sunset Meadow for signs of the missing soldiers.", 1, "Sergeant Haggus has sent me to find out about some missing soldiers that have not returned. I should look for any sign of the missing soldiers in Sunset Meadow.", 220)
    AddQuestStepCompleteAction(Quest, 4, "step4_complete_foundDeadSoldier")
end


function step4_complete_foundDeadSoldier(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 4, "The missing soldiers were dead. Even worse, their remains seemed to rise from the dead and attack me as if controlled by some diabolical force.")
    UpdateQuestTaskGroupDescription(Quest, 4, "The missing soldiers were dead. Even worse, their remains seemed to rise from the dead and attack me as if controlled by some diabolical force.")
    SpawnMob(GetZone(Player), 2530174, false, GetX(Player), GetY(Player), GetZ(Player))
--    SpawnMob(GetZone(Player), 2530223, false, GetX(Player), GetY(Player), GetZ(Player))
    AddQuestStepChat(Quest, 5, "Report the bad news to Sergeant Haggus.", 1, "I need to report back to Sergeant Haggus with this grim information.", 0, 2530078)
    AddQuestStepCompleteAction(Quest, 5, "step5_complete_talkToHaggus")
end

function step5_complete_talkToHaggus(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 5, "I reported to Sergeant Haggus that his missing soldiers are dead.")
    UpdateQuestTaskGroupDescription(Quest, 5, "I reported to Sergeant Haggus that his missing soldiers are dead.")
    AddQuestStepChat(Quest, 6, "Take this information back to Murrar Shar.", 1, "Sergeant Haggus would like me to take this information back to Murrar Shar.", 0, 2530076)
    AddQuestStepCompleteAction(Quest, 6, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
    UpdateQuestDescription(Quest, "I reported to Sergeant Haggus and helped out at the barricades. The goblins were relentless, but I was able to help fend them off. It was a sad sight to see the soldier that had been killed, but the information I collected should prove useful to the colony.")
    GiveQuestReward(Quest, Player)  
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	step1_complete_talkToHaggus(Quest, QuestGiver, Player)
    elseif Step == 2 then
	step2_complete_killedInvaders(Quest, QuestGiver, Player)
    elseif Step == 3 then
	step3_complete_talkToHaggus(Quest, QuestGiver, Player)
    elseif Step == 4 then
	step4_complete_foundDeadSoldier(Quest, QuestGiver, Player)
    elseif Step == 5 then
	step5_complete_talkToHaggus(Quest, QuestGiver, Player)
    end
end


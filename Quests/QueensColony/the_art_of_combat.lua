--[[
    Script Name    : Quests/QueensColony/the_art_of_combat.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Handles the quest, "The Art of Combat"
        Zone       : The Queens Colony
        Quest Giver: Murrar Shar
        Preceded by: None
        Followed by: A Presence of Evil
--]]

function Init(Quest)
    -- Qeynosian Cloth Mitts
    -- Qeynosian Leather Gloves
    -- Qeynosian Studded Gloves
    -- Qeynosian Plated Gauntlets 
    AddQuestStepChat(Quest, 1, "I need to speak to Trainer Hayl McGuinness at the Training Grounds northwest of Murrar Shar.", 1, "I need to learn about combat from Trainer Hayl McGuinness.", 0, 2530070) 
    AddQuestStepCompleteAction(Quest, 1, "step1_complete_talkToHayl")
end

function Accepted(Quest, QuestGiver, Player)
    if QuestGiver ~= nil then
        if GetDistance(Player, QuestGiver) < 30 then
	    FaceTarget(QuestGiver, Player)
	    conversation = CreateConversation()

            PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar032.mp3", "", "", 80247345, 2680267873, Player)
	    AddConversationOption(conversation, "Thanks.")
	    StartConversation(conversation, QuestGiver, Player, "Good luck.")
        end
    end
end

function Declined(Quest, QuestGiver, Player)

end

function step1_complete_talkToHayl(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have spoken with Hayl McGuinness.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with Hayl McGuinness.")
    AddQuestStep(Quest, 2, "I need to defeat a sparring partner in combat. There are several sparring partners just north of Trainer Hayl McGuinness.", 1, 100, "I need to learn about combat from Trainer Hayl McGuinness.", 11, 0, 2530070)
    AddQuestStepCompleteAction(Quest, 2, "step2_complete_killedSparringPartner")
end

function step2_complete_killedSparringPartner(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I have defeated a sparring partner in combat.")
    UpdateQuestTaskGroupDescription(Quest, 2, "I have defeated a sparring partner in combat.")
	
    AddQuestStepChat(Quest, 3, "I should speak with Trainer Hayl McGuinness and tell him of my victory.", 1, "I need to learn about combat from Trainer Hayl McGuinness.", 0, 2530070) 
    AddQuestStepCompleteAction(Quest, 3, "step3_complete_talkToHayl")
end

function step3_complete_talkToHayl(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 3, "I have spoken to Sergeant Hayl McGuinness.")
    UpdateQuestTaskGroupDescription(Quest, 3, "I have won a match against one of the sparring partners.") 
	
    AddQuestStepChat(Quest, 4, "I should tell Murrar that my training was successful.", 1, "I should return to Murrar Shar to show that I am ready for my next challenege.", 0, 2530076) 
    AddQuestStepCompleteAction(Quest, 4, "step4_complete_talkToMurrar")
end

function step4_complete_talkToMurrar(Quest, QuestGiver, Player)
   -- UpdateQuestDescription(Quest, "I have learned some of the basics of combat from Trainer Hayl McGuinness at the Queen's Colony. Hopefully this knowledge helps me serve Qeynos and uncover the trouble here.")
--    UpdateQuestTaskGroupDescription(Quest, "I have reported back to Murrar Shar.")
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	step1_complete_talkToHayl(Quest, QuestGiver, Player)
    elseif Step == 2 then
        step2_complete_killedSparringPartner(Quest, QuestGiver, Player)
    elseif Step == 3 then
	step3_complete_talkToHayl(Quest, QuestGiver, Player)
    end
end

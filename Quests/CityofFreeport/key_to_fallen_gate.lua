--[[
    Script Name    : Quests/CityofFreeport/key_to_fallen_gate.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.03 09:06:49
    Script Purpose : Access Quest for Fallen Gate

        Zone       : CityofFreeport
        Quest Giver: Kanos X'Aphon
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Tundis N'oxyle.", 1, "I must speak with Tundis N'oxyle in the Commonlands about joining the Thexians.", 0, 330394)
		AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've spoken with Tundis N'oxyle.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've spoken with Tundis N'oxyle about joining the Thexians.")
	AddQuestStepKill(Quest, 2, "I must return with five stones from the sandstone giants.", 5, 100, "I must kill five sandstone giants in the Commonlands to prove my worth to Tundis N'oxyle.", 0, 330108)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I have recovered five sand stones.")
    UpdateQuestTaskGroupDescription(Quest, 2, "I've killed all five of the giants Tundis required me to slay.")
    AddQuestStepChat(Quest, 3, "I need to speak with Tundis N'oxyle.", 1, "I must return to Tundis N'oxyle and inform him of the completion of his task.", 0, 330394)
   	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end   	

function Step3Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 3, "I've spoken with Tundis N'oxyle.")
    UpdateQuestTaskGroupDescription(Quest, 3, "I've spoken with Tundis N'oxyle about joining the Thexians.")
    AddQuestStepChat(Quest, 4, "I need to speak with Kanos X'aphon.", 1, "I must return to Kanos X'aphon to tell him of the meeting.", 0, 5590592, 1440080)
   	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end  

function Step4Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 4, "I've spoken with Kanos X'aphon.")
    UpdateQuestTaskGroupDescription(Quest, 4, "I've returned to Kanos X'aphon, and told him of the Thexian gathering.")
    AddQuestStep(Quest, 5, "I must find the leader of the Thexians and take her keys.", 2, 100, "I slaughtered the Thexians standing in my way in order to gather the keys needed.", 0)
   	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end  


function Step5Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 5, "I killed Inana V'sorn and recovered the keys.")
    UpdateQuestTaskGroupDescription(Quest, 5, "I slaughtered the Thexians standing in my way in order to gather the keys needed.")
    AddQuestStepChat(Quest, 6, "I need to give a key to Kanos X'aphon.", 1, "I must speak with Kanos X'aphon, and give him the key he requires.", 0, 4730011)
   	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end  



function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will speak with this Tundis.")
	StartConversation(conversation, QuestGiver, Player, "As you can imagine, my views do not impress the Thexians.  Unfortunately, they are the only ones who have been able to reach the lost city.  I need you to pose as one interested in joining their cause.  You'll need to speak with Tundis N'oxyle near the gate the Thexians erected in the Commonlands.  Do not return until you have further information for me.")
	PlayFlavor(NPC, "voiceover/english/optional1/kanos_x_aphon/fprt_north/kanosxaphon004.mp3", "", "", 2530646913, 2046210703, Spawn)
end



function Declined(Quest, QuestGiver, Player)

end

function QuestComplete(Quest, QuestGiver, Player)
     UpdateQuestStepDescription(Quest, 6, "I've given the key to Kanos X'aphon.")
    UpdateQuestTaskGroupDescription(Quest, 6, "I've spoken with Kanos X'aphon and given him the key he desired.")
    UpdateQuestDescription(Quest, "After slaying every Thexian in the building, I managed to get both a key for myself and Kanos. He certainly took his time in getting to the meeting, that's for certain. He's covered up the mess, but only at the cost of enlisting my services at an unnamed point in the future.")
	GiveQuestReward(Quest, Player)

end

function Reload(Quest, QuestGiver, Player, Step)
    	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
    elseif Step == 4 then
     Step4Complete(Quest, QuestGiver, Player)
         elseif Step == 5 then
     Step5Complete(Quest, QuestGiver, Player)
     elseif Step == 6 then
        QuestComplete(Quest, QuestGiver, Player)
	end
end


--[[
    Script Name    : Quests/AlphaTest/stowaway_antonica.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.15 07:06:35
    Script Purpose : 

        Zone       : AlphaTest
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "I must ride to Antonica...", 12, "The Shady Swashbuckler provided me passage to Antonica. He will have the paperwork I need when I get there.", 2285, 395.79, -38.56, 809.38,12)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	    PlayFlavor(QuestGiver, "", "", "wink", 0, 0, Player)


Qeynos = GetFactionAmount(Player, 11)
Freeport = GetFactionAmount(Player, 12)
Neriak = GetFactionAmount(Player, 13)
Kelethin = GetFactionAmount(Player, 14)
Halas = GetFactionAmount(Player, 16)
Gorowyn = GetFactionAmount(Player, 17)
alignment = GetAlignment(Player)

if GetRace(Player) == 0 or GetRace(Player) == 3 or GetRace(Player) == 5 or GetRace(Player) == 6 or GetRace(Player) == 9 or GetRace(Player) == 11 or GetRace(Player) == 20 then
SetAlignment(Player, 1)
end

if Qeynos ==0 then ChangeFaction(Player, 11, 20000)
end
if Freeport ==0 then ChangeFaction(Player, 12, -40000)
end
--[[if Neriak ==0 then ChangeFaction(Player, 13, Neriak)
end
if Kelethin ==0 then ChangeFaction(Player, 14, Kelethin)
end
if Halas ==0 then ChangeFaction(Player, 16, Halas)
end
if Gorowyn ==0 then ChangeFaction(Player, 17, -Gorowyn)
end--]]
        Antonica = GetZone("Antonica")
       Zone(Antonica,Player,396.44,-38.47, 812.79, 13.82)	    
end

function Declined(Quest, QuestGiver, Player)
	    PlayFlavor(QuestGiver, "voiceover/english/scribe_duvo/qey_elddar/100_scribe_halfling_duvo_multhail1_a72f47c8.mp3", "I'm sorry. I cannot help you.", "shrug", 1448300901, 17119076, Player)
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest)
	UpdateQuestStepDescription(Quest, 1, "I have arrived in Antonica mostly intact.")
	AddQuestStepChat(Quest, 2, "I need to meet up with the Shady Swashbuckler near the lighthouse in Antonica.", 1, "The Shady Swashbuckler provided me passage to Antonica. He will have the paperwork I need when I get there.", 11, 121874)
	AddQuestStepObtainItem(Quest, 3, "I must fill out Qeynos Citizenship papers.", 1,100, "The Shady Swashbuckler provided me passage to Antonica. He will have the paperwork I need when I get there.", 75, 1001095)
	AddQuestStepObtainItem(Quest, 4, "I must fill out Class Certification paperwork.", 1,100, "The Shady Swashbuckler provided me passage to Antonica. He will have the paperwork I need when I get there.", 2183, 1001096,1001097,1001098,1001099,1001100,1001101,1001102,1001103,1001104,1001105,1001106,1001107)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have found the Shady Swashbuckler in Antonica.")
    QuestCheck1(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have Forged Qeynos Citizenship Papers.")
    QuestCheck1(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have Class Certification Papers.")
    QuestCheck1(Quest, QuestGiver, Player)
end

function  QuestCheck1(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player,5858,2) and QuestStepIsComplete(Player,5858,3)and QuestStepIsComplete(Player,5858,4)  then
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found all I need to Fast-Track to Qeynos.")
	UpdateQuestDescription(Quest, "I have all the necessary parts for the Fast-Track passage to Qeynos. The ride was a bit cramped...")
	GiveQuestReward(Quest, Player)
end
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
	end
end
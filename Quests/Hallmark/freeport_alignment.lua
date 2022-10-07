--[[
    Script Name    : Quests/Hallmark/freeport_alignment.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.26 12:09:30
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: Ambassador T'Kirr (3250005)
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must speak with Duke Ferrin.", 1, "Duke Ferrin will arrange transport for me to Freeport.", 11, 3250003)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Excellent! I knew you were a brave soul.  First you must speak with the Duke and arrange passage to Freeport.  The Overlord will cover the expenses for your journey but you must repay him for his generosity.  When you reach the district where you are living, speak with the Overseer assigned to the area and he will show you to your new quarters. ")
	Dialog.AddVoiceover("voiceover/english/ambassador_t_kirr/tutorial_island02/ambassadortkirr008.mp3", 1533775256, 3058641435)
    PlayFlavor(QuestGiver,"","","agree",0,0,Player)
	Dialog.AddOption("Then I have no further need of you.")
	Dialog.Start()
	if not HasItem(Player,1413)then
    GiveQuestItem(Quest,Player,"So it shall be!  This coin is given to all refugees seeking to start a life in Freeport.",1413)
    end
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've spoken with Duke Ferrin.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Duke Ferrin has arranged transport for me to Freeport.")

   Race = GetRace(Player)

    -- Erudite / Kerra
    if Race == 3 or Race == 11 then
	AddQuestStepChat(Quest, 2, "I must find the Overseer", 1, "I have been instructed to seek out the Overseer when I arrive in Freeport.   I should ring the bell on the docks to book passage to the city.", 11, 1350116)
    UpdateQuestZone(Quest, "Stonestair Byway")


      -- Ratonga / Gnome
    elseif Race == 5 or Race == 13 then
	AddQuestStepChat(Quest, 2, "I must find the Overseer", 1, "I have been instructed to seek out the Overseer when I arrive in Freeport.   I should ring the bell on the docks to book passage to the city.", 11, 1360197)
    UpdateQuestZone(Quest, "Temple Street")


      -- Human / Half Elf
    elseif Race == 9 or Race == 6 then
	AddQuestStepChat(Quest, 2, "I must find the Overseer", 1, "I have been instructed to seek out the Overseer when I arrive in Freeport.   I should ring the bell on the docks to book passage to the city.", 11, 1370128)
    UpdateQuestZone(Quest, "Beggar's Court")


   -- Orge / Troll
    elseif Race == 12 or Race == 14 then
	AddQuestStepChat(Quest, 2, "I must find the Overseer", 1, "I have been instructed to seek out the Overseer when I arrive in Freeport.   I should ring the bell on the docks to book passage to the city.", 11, 1340141)
    UpdateQuestZone(Quest, "Big Bend")
    
   -- Dark Elf / Arasai / Freeblood
    elseif Race == 1 or Race == 17 or Race == 19 then
	AddQuestStepChat(Quest, 2, "I must find the Overseer", 1, "I have been instructed to seek out the Overseer when I arrive in Freeport.   I should ring the bell on the docks to book passage to the city.", 11, 1380128)
    UpdateQuestZone(Quest, "Longshadow Alley")

    -- Barbarian / Iksar / Sarnak
    elseif Race == 0 or Race == 10 or Race == 19 then
	AddQuestStepChat(Quest, 2, "I must find the Overseer", 1, "I have been instructed to seek out the Overseer when I arrive in Freeport.   I should ring the bell on the docks to book passage to the city.", 11, 1390126)
    UpdateQuestZone(Quest, "Scale Yard")

    end

	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I found the Overseer")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with the Overseer.")

	UpdateQuestDescription(Quest, "I've managed to make my way to the city of Freeport.  Although things aren't exactly as I was promised by Ambassador T'Kirr, I will make do until I am able to forge my own destiny.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

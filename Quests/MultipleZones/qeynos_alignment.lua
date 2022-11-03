--[[
	Script Name		:	qeynos_alignment.lua
	Script Purpose	:	Handles the quest, "Qeynos Alignment"
	Script Author	:	Dorbin
	Script Date		:	8/29/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Hallmark
	Quest Giver		:	Ambassador Saera (3250004)
	Preceded by		:	None
	Followed by		:	None
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must speak with Duke Ferrin.", 1, "Duke Ferrin will arrange transport for me to Qeynos.", 11, 3250003)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Splendid!  You must speak to Duke Ferrin about leaving the island.  Once you arrive to your appointed village, find a steward.  He will guide you to your new home, and give you further instructions.  Do you have any other questions?")
	Dialog.AddVoiceover("voiceover/english/ambassador_saera/tutorial_island02/ambassadorsaera006.mp3", 2295776297, 2824040451)
    PlayFlavor(QuestGiver,"","","curtsey",0,0,Player)
	Dialog.AddOption("No, I believe I'm all set. Thanks!")
	Dialog.Start()
	if not HasItem(Player,1414)then
    GiveQuestItem(Quest,Player,"Congratulations! This coin is given to all refugees seeking to start a life in Qeynos.",1414)
    end


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
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke with Duke Ferrin.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Duke Ferrin has arranged transport for me to Qeynos.")

   Race = GetRace(Player)
    
    -- Human / Kerra
    if Race == 9 then
	AddQuestStepChat(Quest, 2, "I must find the Steward", 1, "I have been instructed to seek out the Steward when I arrive in Qeynos.  I should ring the bell on the docks to book passage to the city.", 11, 2330170,2340166)
    UpdateQuestZone(Quest, "Multiple Zones")
    
    elseif Race == 11 then
	AddQuestStepChat(Quest, 2, "I must find the Steward", 1, "I have been instructed to seek out the Steward when I arrive in Qeynos.  I should ring the bell on the docks to book passage to the city.", 11, 2330170)
    UpdateQuestZone(Quest, "Nettleville")

    -- Erudite
    elseif Race == 3 then
	AddQuestStepChat(Quest, 2, "I must find the Steward", 1, "I have been instructed to seek out the Steward when I arrive in Qeynos.  I should ring the bell on the docks to book passage to the city.", 11, 2340166)
    UpdateQuestZone(Quest, "Starcrest")


    -- Barbarian / Dwarf
    elseif Race == 0 or Race == 2 then
	AddQuestStepChat(Quest, 2, "I must find the Steward", 1, "I have been instructed to seek out the Steward when I arrive in Qeynos.  I should ring the bell on the docks to book passage to the city.", 11, 2350184)
    UpdateQuestZone(Quest, "Graystone Yard")


    -- High Elf / Froglok
    elseif Race == 4 or Race == 8 then
	AddQuestStepChat(Quest, 2, "I must find the Steward", 1, "I have been instructed to seek out the Steward when I arrive in Qeynos.  I should ring the bell on the docks to book passage to the city.", 11, 2360174)
    UpdateQuestZone(Quest, "Castleview")


    -- Half Elf / Wood Elf / Fae
    elseif Race == 6 or Race == 15 or Race == 16 then
	AddQuestStepChat(Quest, 2, "I must find the Steward", 1, "I have been instructed to seek out the Steward when I arrive in Qeynos.  I should ring the bell on the docks to book passage to the city.", 11, 2370111)
    UpdateQuestZone(Quest, "Willow Wood")


    -- Gnome / Halfling
    elseif Race == 5 or Race == 7 then
	AddQuestStepChat(Quest, 2, "I must find the Steward", 1, "I have been instructed to seek out the Steward when I arrive in Qeynos.  I should ring the bell on the docks to book passage to the city.", 11, 2380173)
    UpdateQuestZone(Quest, "Baubbleshire")
end

	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I found the Steward")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with the Steward.")

	UpdateQuestDescription(Quest, "I have successfully arrived in Qeynos and gotten situated here.  I would prefer better quarters, and to live in the city, but I suppose I'll have to work towards that on my own.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

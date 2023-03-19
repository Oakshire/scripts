--[[
    Script Name    : Quests/Hallmark/the_call_of_qeynos.lua
    Script Author  : Dorbin
    Script Date    : 2023.03.16 06:03:41
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest,QuestGiver,Player)
	AddQuestStep(Quest, 1, "Queen Antonia is speaking to me...", 1,100, "Queen Antonia is speaking to me...", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have listened to Queen Antonia's message.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have listened to Queen Antonia's message.")
Race = GetRace(Player)
    -- Human 
    if Race == 9 then
	AddQuestStepChat(Quest, 2, "I must find the Steward", 1, "I have been instructed to seek out a Steward in Qeynos where I arrived.", 11, 2330170,2340166)
    UpdateQuestZone(Quest, "Multiple Zones")

     -- Kerra
    elseif Race == 11 then
	AddQuestStepChat(Quest, 2, "I must find the Steward in Nettleville Hovel", 1, "I must find the Steward in Nettleville Hovel", 11, 2330170)
    UpdateQuestZone(Quest, "Nettleville")

    -- Erudite
    elseif Race == 3 then
	AddQuestStepChat(Quest, 2, "I must find the Steward in Starcrest Commune", 1, "I must find the Steward in Starcrest Commune", 11, 2340166)
    UpdateQuestZone(Quest, "Starcrest")


    -- Barbarian / Dwarf
    elseif Race == 0 or Race == 2 then
	AddQuestStepChat(Quest, 2, "I must find the Steward in Graystone Yard", 1, "I must find the Steward in Graystone Yard", 11, 2350184)
    UpdateQuestZone(Quest, "Graystone Yard")


    -- High Elf / Froglok
    elseif Race == 4 or Race == 8 then
	AddQuestStepChat(Quest, 2, "I must find the Steward Castleview Hamlet", 1, "I must find the Steward Castleview Hamlet", 11, 2360174)
    UpdateQuestZone(Quest, "Castleview")


    -- Half Elf / Wood Elf / Fae
    elseif Race == 6 or Race == 15 or Race == 16 then
	AddQuestStepChat(Quest, 2, "I must find the Steward in The Willow Wood", 1, "I must find the Steward in The Willow Wood", 11, 2370111)
    UpdateQuestZone(Quest, "Willow Wood")


    -- Gnome / Halfling
    elseif Race == 5 or Race == 7 then
	AddQuestStepChat(Quest, 2, "I must find the Steward in The Baubbleshire", 1, "I must find the Steward in The Baubbleshire", 11, 2380173)
    UpdateQuestZone(Quest, "Baubbleshire")
end
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
conversation = CreateConversation()
    PlayFlavor(Player, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_11.mp3", "", "", 3316158990, 3680571955, Player)
    AddConversationOption(conversation, "[I must speak with a Steward!]")
    StartDialogConversation(conversation, 1, QuestGiver, Player, "\"Your loyalty will be tested, for you must earn the right to be called citizen.\"")
   SetStepComplete(Player, 5792,1)
end



function Declined(Quest, QuestGiver, Player)
conversation = CreateConversation()
    choice = MakeRandomInt(1,3) 
    if choice == 1 then
    PlayFlavor(Player, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_3.mp3", "", "", 1841028977, 3133868486, Player)
    StartDialogConversation(conversation, 1, QuestGiver, Player, "\"If you are tired, cold or hungry, if you flee persecution, poverty or injustice, be comforted, there is a place at our hearth for you.\"")
    elseif choice ==2 then
    PlayFlavor(Player, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_15.mp3", "", "", 3873638463, 3215411094, Player)
    StartDialogConversation(conversation, 1, QuestGiver, Player, "\"I trust that you do not share in Lucan's deceit, and that the well-being of Qeynos and its people is in your heart.\"")
    elseif choice ==3 then
    PlayFlavor(Player, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_12.mp3", "", "", 2036336595, 3509341224, Player)
    StartDialogConversation(conversation, 1, QuestGiver, Player, "\"Qeynosians are generous to travelers, but harsh with traitors.\"")
    end        
    
    OfferQuest(QuestGiver,Player, 5792)
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I found the Steward")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with the Steward.")

	UpdateQuestDescription(Quest, "I have taken the first steps in declaring myself a true Qeynosian.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
end
end

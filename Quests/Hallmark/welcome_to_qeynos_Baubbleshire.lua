--[[
    Script Name    : Quests/Hallmark/welcome_to_qeynos_Baubbleshire.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.28 03:10:38
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStep(Quest, 1, "Use the room door to be given your inn room.  Click on the \"Buy\" tab to get your room.", 1, 100, "I've been instructed to sign in at the inn's guest registry in order to get the key to my room.", 11)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Yup, you heard me right.  The Baubbleshire is one of the villages that surround the city of Qeynos.  We halflings and gnomes live a good life here, though we have our decorating differences!  Oh!  I nearly forgot about your house!  The caretaker is waiting for you!")
    PlayFlavor(QuestGiver,"","","smile",0,0,Player)
	Dialog.AddVoiceover("voiceover/english/steward_leon/qey_village06/steward_leon004.mp3", 0, 0) --WE DON'T HAVE THE KEYS TO THIS VO
	Dialog.AddOption("Great! I'll head to the inn right away.  Thank you.")
	Dialog.Start()
    if HasQuest(Player,5717) and GetQuestStep(Player,5717)==2 then
        SetStepComplete(Player,5717,2)
    end        
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I've been given your inn room")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've been given the key to my room and can now come and go as I please.")

	UpdateQuestDescription(Quest, "Thanks to the help of the inn's caretaker, I've been able to familiarize myself with Nettleville.  Not only did she show me the way around, she also let me know who to speak to in order to become a citizen.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

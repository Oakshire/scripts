--[[
    Script Name    : Quests/Nettleville/scalies_for_shinies.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.24 03:06:22
    Script Purpose : 

        Zone       : Nettleville
        Quest Giver: Dirk Vargin
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill some albino snakes for their skins. The locals often call these snakes 'cave serpents'.", 10, 100, "I need to collect ten Albino Snake Skins for Dirk Vagrin in the Caves.", 98, 1970008,1970009,1970012,8260003,8260024,8260030,8260074,8260082)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Caves")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	PlayFlavor(QuestGiver, "", "", "smile", 0, 0, Player)
	Dialog.AddDialog("In the caves, they are!  The scalies live in the caves.  Bring me ten albino snakeskins and get your reward! Go too!")
	Dialog.AddVoiceover("voiceover/english/devon_varin/qey_village01/dirkvagrin002.mp3", 2533226550, 1889262998)
	Dialog.AddOption("Alright.  I'm off.")
	Dialog.AddOption("... did I just accept a job... err.  I'll be back.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have collected the snake skins.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I gathered ten Albino Snake Skins for Dirk Vagrin.")
    UpdateQuestZone(Quest,"Nettleville")
	AddQuestStepChat(Quest, 2, "I must deliver these albino snakes for their skins. The locals often call these snakes 'cave serpents'.", 1, "I need to deliver these Albino Snake Skins to Dirk Vagrin in Nettleville.", 98, 2330020)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have returned to Dirk Vargin.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I delivered ten Albino Snake Skins for Dirk Vagrin.")
   
	UpdateQuestDescription(Quest, "Sure enough, Dirk Vagrin gave me money and an albino snakeskin wristband for giving him the ten Albino Snake Skins.  I felt kind of bad taking his money but we were both happy with the end results.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

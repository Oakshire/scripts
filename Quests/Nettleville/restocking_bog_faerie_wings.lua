--[[
	Script Name	: Quests/Nettleville/restocking_bog_faerie_wings.lua
	Script Purpose	: Handles the quest, "Restocking Bog Faerie Wings"
	Script Author	: Scatman
	Script Date	: 2009.08.12
	
	Zone       : Nettleville
	Quest Giver: Varion Smitelin
	Preceded by: None
	Followed by: None
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect eight bog faerie wings.", 8, 100, "I need to collect eight Bog Faerie Wings from the Peat Bog for Scribe Varion Smitelin.", 110, 8290002,8290003,8290052,8290008,8290009,8290010,8290013,8290014,8290011,8290012,8290017,8290018,8290019,8290053,8290044,8290001 )
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_GotWings")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	PlayFlavor(QuestGiver, "", "", "nod", 0, 0, Player)
	Dialog.AddDialog("Fabulous!  I need a handful of the wings to restock my supply. Good luck in that nasty bog and be careful!")
	Dialog.AddVoiceover("voiceover/english/scribe_varion_smitelin/qey_village01/varionsmitelin004.mp3", 4154898846, 3738847882)
	Dialog.AddOption("You don't have to worry about me.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_GotWings(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the wings Varion needed.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I collected the eight Bog Faerie Wings for Scribe Varion Smitelin.")
	UpdateQuestZone(Quest, "Nettleville")
	
	AddQuestStepChat(Quest, 2, "I need to return to Scribe Varion Smitelin.", 1, "I should return these eight Bog Faerie Wings to Scribe Varion Smitelin in Nettleville.", 0, 2330056) 
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I turned in the wings to Scribe Varion.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I turned in the eight Bog Faerie Wings to Scribe Varion Smitelin for money.")
	UpdateQuestDescription(Quest, "I was able to resupply Scribe Varion Smitelin with Bog Faerie Wings and he paid me for a job well done.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_GotWings(Quest, QuestGiver, Player)
	end
end
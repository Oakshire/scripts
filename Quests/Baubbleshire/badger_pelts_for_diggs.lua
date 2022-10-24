--[[
	Script Name	: Quests/Baubbleshire/badger_pelts_for_diggs.lua
	Script Purpose	: Handles the quest, "Badger Pelts for Diggs"
	Script Author	: Scatman
	Script Date	: 2009.09.27
	
	Zone       : Baubbleshire
	Quest Giver: Diggin Digs
	Preceded by: None
	Followed by: None
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need ten badger pelts.", 10, 100, "I must collect ten badger pelts in the Forest Ruins or Oakmyst Forest.", 93, 1960011, 1960017, 1950035, 1950039, 8270025,8270016,8300001,8300008)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedBadgers")
    UpdateQuestZone(Quest,"Multiple Zones")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Then prepare for a hunting trip in the Forest Ruins or Oakmyst Forest.  I'll pay you handsomely for a bundle of badger pelts.  I may even toss in a bit of Diggs' finest armor.")
	Dialog.AddVoiceover("voiceover/english/merchant_diggin_diggs/qey_village06/merchantdiggindiggs002.mp3", 2590912109, 2110560767)
	Dialog.AddOption("I will return with the bundle of badger pelts. ", "Dialog8")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killedBadgers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected ten badger pelts.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected then badger pelts for Diggs.")
	UpdateQuestZone(Quest, "Baubbleshire")
	
	AddQuestStepChat(Quest, 2, "I must return to Armorsmith Diggs.", 1, "I must return to Armorsmith Diggs in Baubbleshire.", 93, 2380049 )
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player, Step)
	UpdateQuestStepDescription(Quest, 2, "I have collected the souls.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Armorsmith Diggs in Baubbleshire.")
	UpdateQuestDescription(Quest, "I collected ten badger pelts for Armorsmith Diggs.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killedBadgers(Quest, QuestGiver, Player)
	end
end
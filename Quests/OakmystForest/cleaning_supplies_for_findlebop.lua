--[[
    Script Name    : Quests/OakmystForest/cleaning_supplies_for_findlebop.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.18 03:01:08
    Script Purpose : 

        Zone       : OakmystForest
        Quest Giver: Smithy Findlebop
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to find a pristine Mystail rat tail.", 1, 35, "I need to hunt down Mystail matriarch in the Oakmyst forest until I can find a suitable tail.", 172, 8300036)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_Matriarchs")
		UpdateQuestZone(Quest, "Oakmyst Forest")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("FINE! Sorry to be harsh, but you bother me a critical juncture! If you want to help me, go get me something to scrub this bit of metal. Perhaps the tail of a Mystail rat will do the trick. Yes, yes. That would work. Get one from the Oakmyst Forest!")
    PlayFlavor(QuestGiver, "","","sigh",0,0, Player)
	Dialog.AddVoiceover("voiceover/english/smithy_findlebop/qey_village06/smithyfindlebop002.mp3",3746495978,2876844206)
	Dialog.AddOption("Ok, I'll be back.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_Matriarchs(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found a perfect mystail rat tail.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I gathered a perfect Mystail rat tail for Smithy Findlebop to clean with.")
	UpdateQuestZone(Quest, "Baubbleshire")
	
	AddQuestStepChat(Quest, 2, "I must return to Smithy Findlebop.", 1, "I must return to Smithy Findlebop in Baubbleshire.", 238, 2380011)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player, Step)
	UpdateQuestStepDescription(Quest, 2, "I returned to Smithy Findlebop.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave the Mystrat tail to Smithy Findlebop in Baubbleshire.")
	UpdateQuestDescription(Quest, "I finally got a suitable tail to bring back to Smithy Findlebop, and it seemed to work out well for his purposes. He apologized for being so curt with me earlier too.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_Matriarchs(Quest, QuestGiver, Player)
	end
end
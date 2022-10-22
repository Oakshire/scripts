--[[
    Script Name    : Quests/StarcrestCommune/tanairas_picnic_spot.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.04 03:07:51
    Script Purpose : 

        Zone       : StarcrestCommune
        Quest Giver: Tanaira
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
AddQuestStepZoneLoc(Quest, 1, "I need to find the picnic spot near the waterfall in Oakmyst Forest.", 6, "I need to find the spot near the waterfall in Oakmyst Forest and see if it is a good site for a picnic.", 185, 976.82, 2.23, -209.86, 830)
AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
UpdateQuestZone(Quest, "Oakmyst Forest")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Wonderful!  I am very bad with directions!  Do you think you could make a map on this page when you find it?  I heard the best spot is next to the waterfall there.")
    PlayFlavor(QuestGiver, "", "", "thanks", 0, 0, Player)
	Dialog.AddVoiceover("voiceover/english/merchant_tanaira/qey_village02/merchanttanaira001.mp3", 613556213, 3041708852)
	Dialog.AddOption("I'd be happy to.  I'll return when I've mapped out the area.")
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
	UpdateQuestStepDescription(Quest, 1, "I found the spot near the waterfall.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the spot near the waterfall and made a map. It looks like a pretty good area for a picnic.")

    UpdateQuestZone(Quest, "Starcrest Commune")
    AddQuestStepChat(Quest, 2, "I should give this map to Tanaira.", 1, "Tanaira will be pleased to know her picnic spot is ideal.  She was selling at her stall in Starcrest.", 185, 2340040)
    AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
    end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I returned to Tanaira.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I told Tanaira about the picnic spot in Oakmyst.")

	UpdateQuestDescription(Quest, "Tanaira seemed pleased with the map and my report that the location was a pretty good spot for a picnic. I hope she is able to get Grekin to take time off from being a merchant and to go on the picnic with her.")
	GiveQuestReward(Quest, Player)
    end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	end
		if Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

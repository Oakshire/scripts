--[[
    Script Name    : Quests/TheElddarGrove/gildas_requests__part_iii.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.08 10:07:14
    Script Purpose : Qeynos Cloth Armorquest 3

        Zone       : TheElddarGrove
        Quest Giver: Gildas Cedartree
        Preceded by: Gildas' Requests - Part II
        Followed by: Gildas' Requests - Part IV
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I should destroy the defiled torrents I find within Stormhold to try and recover any bone fragments I find for Gildas.", 12, 100, "I'm looking for any information as to the origins of the undead within Stormhold.  If you could venture there and destroy some of the defiled torrents and bring back some of their bone shards it would help further my research.  The library is always a good source of information, if you could bring me any information you find there it may be of help.  And finally, I have heard reports of various jelly like creatures within Stormhold.  Can you collect me some samples of these creatures so I can verify that they differ from those found within our catacombs? - Gildas", 92, 150012,150229)
	AddQuestStepKill(Quest, 2, "I must gather any information I can find within the library in Stormhold", 8, 100, "I'm looking for any information as to the origins of the undead within Stormhold.  If you could venture there and destroy some of the defiled torrents and bring back some of their bone shards it would help further my research.  The library is always a good source of information, if you could bring me any information you find there it may be of help.  And finally, I have heard reports of various jelly like creatures within Stormhold.  Can you collect me some samples of these creatures so I can verify that they differ from those found within our catacombs? - Gildas", 2179, 150054,150268)
	AddQuestStepKill(Quest, 3, "I should destroy any of the more powerful gelatinous masses I find within Stormhold in an attempt to find any information about their origin for Gildas.", 12, 100, "I'm looking for any information as to the origins of the undead within Stormhold.  If you could venture there and destroy some of the defiled torrents and bring back some of their bone shards it would help further my research.  The library is always a good source of information, if you could bring me any information you find there it may be of help.  And finally, I have heard reports of various jelly like creatures within Stormhold.  Can you collect me some samples of these creatures so I can verify that they differ from those found within our catacombs? - Gildas", 769, 150025,150240,150049,150263,150241,150026)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
    UpdateQuestZone(Quest,"Stormhold")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
    Dialog.AddDialog( "A few things in Antonica never cease to cause problems. It's a shame we need the walls of Qeynos ... we'd have such a lovely view without them. Please take this scroll; my requests are written on it.")
--	Dialog.AddVoiceover("voiceover/english/selwyn_oakheart/qey_south/quests/selwyn_oakheart/selwyn001.mp3", 390832885, 49061382)
	PlayFlavor(QuestGiver,"","","ponder", 0, 0, Player)
	Dialog.AddOption( "Perhaps one day Gildas.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have destroyed the defiled torrents I found within Stormhold and recovered bone fragments for Gildas.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have gathered tattered pages from the guardian writs within Stormhold.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have destroyed the gelatinous masses I found within Stormhold.")
    CheckProgress(Quest, QuestGiver, Player)

end

	

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5614, 1) and QuestStepIsComplete(Player, 5614, 2) and QuestStepIsComplete(Player, 5614, 3) then
	UpdateQuestTaskGroupDescription(Quest, 1, "I have completed all that Gildas has asked of me. I should return to him.")
    UpdateQuestZone(Quest,"The Elddar Grove")
	AddQuestStepChat(Quest, 4, "I should return to Gildas in The Elddar Grove.", 1, "I need to speak to Gildas Cedartree in The Elddar Grove.", 11, 2070033)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end
end	


function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "	I have returned to Gildas in The Elddar Grove.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken to Gildas Cedartree in The Elddar Grove.")

	UpdateQuestDescription(Quest, "Gildas has rewarded me with a silver touched shoes.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		QuestComplete(Quest, QuestGiver, Player)

	end
end



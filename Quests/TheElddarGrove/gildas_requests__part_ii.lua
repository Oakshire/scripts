--[[
    Script Name    : Quests/TheElddarGrove/gildas_requests__part_ii.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.08 10:07:14
    Script Purpose : Qeynos Cloth Armorquest 2

        Zone       : TheElddarGrove
        Quest Giver: Gildas Cedartree
        Preceded by: Gildas' Requests - Part I
        Followed by: Gildas' Requests - Part III
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must collect some basilisk eyes off the granitescale basilisks in Antonica.", 25, 100, "I need three things done this time. Please see if you can recover some of the granitescale basilisk eyes found in Antonica. I can enchant them to help the people who get caught in their gaze. There seem to be more blightfang spiders within Blackburrow and with their increased number it is driving more and more gnolls out into Antonica. If you could burn some of the blightfang hatchlings to ashes it would be a big help in making the local citizens feel more safe. And lastly, as always the Caltorsis undead are a constant problem. If you could find Advisor Pandrus and show him the way to his grave once again I would be ever thankful. - Gildas", 83, 120028)
	AddQuestStepKill(Quest, 2, "I must try and push the number of blightfang hatchlings down within Blackburrow.", 12, 100, "I need three things done this time. Please see if you can recover some of the granitescale basilisk eyes found in Antonica. I can enchant them to help the people who get caught in their gaze. There seem to be more blightfang spiders within Blackburrow and with their increased number it is driving more and more gnolls out into Antonica. If you could burn some of the blightfang hatchlings to ashes it would be a big help in making the local citizens feel more safe. And lastly, as always the Caltorsis undead are a constant problem. If you could find Advisor Pandrus and show him the way to his grave once again I would be ever thankful. - Gildas", 1841, 170020)
	AddQuestStepKill(Quest, 3, "I must destroy Advisor Pandrus in Antonica.", 1, 100, "I need three things done this time. Please see if you can recover some of the granitescale basilisk eyes found in Antonica. I can enchant them to help the people who get caught in their gaze. There seem to be more blightfang spiders within Blackburrow and with their increased number it is driving more and more gnolls out into Antonica. If you could burn some of the blightfang hatchlings to ashes it would be a big help in making the local citizens feel more safe. And lastly, as always the Caltorsis undead are a constant problem. If you could find Advisor Pandrus and show him the way to his grave once again I would be ever thankful. - Gildas", 91, 120247)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
    UpdateQuestZone(Quest,"Multiple Zones")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
    Dialog.AddDialog( "I'll write the details in your journal. We need to attend to the wildlife both natural and unnatural in Antonica. If left unattended, the forest flora and fauna grows like nasty weeds. Please return safely after you finish your job.")
--	Dialog.AddVoiceover("voiceover/english/selwyn_oakheart/qey_south/quests/selwyn_oakheart/selwyn001.mp3", 390832885, 49061382)
	PlayFlavor(QuestGiver,"","","nod", 0, 0, Player)
	Dialog.AddOption( "I will return soon.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected some basilisk eyes off the granitescale basilisks in Antonica.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have taken the number of blightfang hatchlings down within Blackburrow.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have destroyed Advisor Pandrus in Antonica.")
    CheckProgress(Quest, QuestGiver, Player)

end

	

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5613, 1) and QuestStepIsComplete(Player, 5613, 2) and QuestStepIsComplete(Player, 5613, 3) then
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

	UpdateQuestDescription(Quest, "Gildas has rewarded me with a silver touched armbands.")
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



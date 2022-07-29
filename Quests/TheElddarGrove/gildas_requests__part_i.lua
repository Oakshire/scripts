--[[
    Script Name    : Quests/TheElddarGrove/gildas_requests__part_i.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.08 10:07:14
    Script Purpose : Qeynos Cloth Armorquest 1

        Zone       : TheElddarGrove
        Quest Giver: Gildas Cedartree
        Preceded by: None
        Followed by: Gildas' Requests - Part II
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must destroy the Caltorsis magi within Antonica.", 14, 100, "It seems there are some scarecrows attacking the livestock and on occasion the people out in Antonica. I need you to destroy these animated abominations if you can. It's likely the undead Caltorsis magi are behind the corrupted animations. Destroy as many of them as you can find and hopefully this will relieve or solve the problem for the time being. - Gildas", 91, 120127)
	AddQuestStepKill(Quest, 2, "I must destroy the animated rotstuffed scarecrows in Antonica.", 15, 100, "It seems there are some scarecrows attacking the livestock and on occasion the people out in Antonica. I need you to destroy these animated abominations if you can. It's likely the undead Caltorsis magi are behind the corrupted animations. Destroy as many of them as you can find and hopefully this will relieve or solve the problem for the time being. - Gildas", 611, 120156,121300)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
    UpdateQuestZone(Quest,"Antonica")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
    Dialog.AddDialog( "Then I thank you in advance. I'll speak with my tailoring friend to see what she can make for you. Let me see your journal, and I'll detail the latest threats to Qeynos.")
	Dialog.AddVoiceover("voiceover/english/gildas_cedartree/qey_elddar/quests/gildas_cedartree/gildascedartree004.mp3", 1682068639, 1518126773)
	PlayFlavor(QuestGiver,"","","thanks", 0, 0, Player)
	Dialog.AddOption( "I will.  I'll return when the deeds are done.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have destroyed many of the Caltorsis magi within Antonica.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have destroyed many of the animated rotstuffed scarecrows in Antonica.")
    CheckProgress(Quest, QuestGiver, Player)
end



	

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5612, 1) and QuestStepIsComplete(Player, 5612, 2) then
	UpdateQuestTaskGroupDescription(Quest, 1, "I have completed all that Gildas has asked of me. I should return to him.")
    UpdateQuestZone(Quest,"The Elddar Grove")
	AddQuestStepChat(Quest, 3, "I should return to Gildas in The Elddar Grove.", 1, "I need to speak to Gildas Cedartree in The Elddar Grove.", 11, 2070033)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end
end	


function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "	I have returned to Gildas in The Elddar Grove.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken to Gildas Cedartree in The Elddar Grove.")

	UpdateQuestDescription(Quest, "Gildas has rewarded me with a silver touched gloves.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)

	end
end




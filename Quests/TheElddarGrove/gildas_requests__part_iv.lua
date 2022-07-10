--[[
    Script Name    : Quests/TheElddarGrove/gildas_requests__part_iv.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.08 10:07:14
    Script Purpose : Qeynos Cloth Armorquest 4

        Zone       : TheElddarGrove
        Quest Giver: Gildas Cedartree
        Preceded by: Gildas' Requests - Part III
        Followed by: Gildas' Requests - Part V
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must recover some bone fragments from the ire minions in the Crypt of Betrayal.", 12, 100, "From what you brought back to me the last time I've pieced some things together but need some more samples.  This time though from the Crypt of Betrayal below Qeynos.  Bring me some of the bone fragments from the ire minions and I'll see if they match with the torrents.  While there I'd appreciate it if you could take care of some of the scarabs, they are starting to get out of control.  And for good measure kill any shrillers you find. - Gildas", 92, 2010010,2010027,2010029,2010039)
	AddQuestStepKill(Quest, 2, "I must reduce the number of scarabs within the Crypt of Betrayal.", 20, 100, "From what you brought back to me the last time I've pieced some things together but need some more samples.  This time though from the Crypt of Betrayal below Qeynos.  Bring me some of the bone fragments from the ire minions and I'll see if they match with the torrents.  While there I'd appreciate it if you could take care of some of the scarabs, they are starting to get out of control.  And for good measure kill any shrillers you find. - Gildas", 1821, 2010002,2010013,2040001	)
	AddQuestStepKill(Quest, 3, "I must kill a few of the shrillers within The Crypt of Betrayal.", 12, 100, "From what you brought back to me the last time I've pieced some things together but need some more samples.  This time though from the Crypt of Betrayal below Qeynos.  Bring me some of the bone fragments from the ire minions and I'll see if they match with the torrents.  While there I'd appreciate it if you could take care of some of the scarabs, they are starting to get out of control.  And for good measure kill any shrillers you find. - Gildas", 140, 2010003,2010026,2010035)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
    UpdateQuestZone(Quest,"The Crypt of Betrayal")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
    Dialog.AddDialog( "It seems that some problems don't go away, even after death. I heard reports of a threat that we must take care of immediately. If you weren't as capable as you've already proved, I'd be reluctant to send you on this dangerous mission. As it stands, I need your help. I'll write directions in your journal.")
--	Dialog.AddVoiceover("voiceover/english/selwyn_oakheart/qey_south/quests/selwyn_oakheart/selwyn001.mp3", 390832885, 49061382)
	PlayFlavor(QuestGiver,"","","ponder", 0, 0, Player)
	Dialog.AddOption( "I will ensure this is taken care of.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have recovered some bone fragments from the ire minions in the Crypt of Betrayal.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have reduced the number of scarabs within the Crypt of Betrayal.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have killed a few of the shrillers within The Crypt of Betrayal.")
    CheckProgress(Quest, QuestGiver, Player)

end

	

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5615, 1) and QuestStepIsComplete(Player, 5615, 2) and QuestStepIsComplete(Player, 5615, 3) then
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

	UpdateQuestDescription(Quest, "Gildas has rewarded me with a silver touched shawl.")
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



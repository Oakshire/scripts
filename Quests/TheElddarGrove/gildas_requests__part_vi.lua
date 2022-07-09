--[[
    Script Name    : Quests/TheElddarGrove/gildas_requests__part_vi.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.08 10:07:14
    Script Purpose : 

        Zone       : TheElddarGrove
        Quest Giver: Gildas Cedartree
        Preceded by: Gildas' Requests - Part V
        Followed by: None
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must help drive back some of the Steelhoof invaders.", 12, 100, "I'm afraid more things threaten our exploration parties within the Steppes. You can help by driving back some of the Steelhoof invaders. The Sabertooth chanters are also appearing to be a driving force behind the raids those gnolls have been making as of late. And it appears some undead apprentices of the mage Varsoon have appeared near some ruins within the Steppes. They need to be dealt with accordingly. And finally, an old apprentice of mine Celeg Ixuri seems to have returned from the dead after searching for the secrets of Varsoon. He needs to be destroyed in his undead state he's very dangerous. Please be careful he was one of my most talented students, you might take friends with you for this. - Gildas", 611,  2490066)
	AddQuestStepKill(Quest, 2, "I should find and kill all the Sabertooth chanters I can.", 8, 100, "I'm afraid more things threaten our exploration parties within the Steppes. You can help by driving back some of the Steelhoof invaders. The Sabertooth chanters are also appearing to be a driving force behind the raids those gnolls have been making as of late. And it appears some undead apprentices of the mage Varsoon have appeared near some ruins within the Steppes. They need to be dealt with accordingly. And finally, an old apprentice of mine Celeg Ixuri seems to have returned from the dead after searching for the secrets of Varsoon. He needs to be destroyed in his undead state he's very dangerous. Please be careful he was one of my most talented students, you might take friends with you for this. - Gildas", 611,  170026,2490315)
	AddQuestStepKill(Quest, 3, "I should find and destroy several of Varsoon's undead apprentices.", 10, 100, "I'm afraid more things threaten our exploration parties within the Steppes. You can help by driving back some of the Steelhoof invaders. The Sabertooth chanters are also appearing to be a driving force behind the raids those gnolls have been making as of late. And it appears some undead apprentices of the mage Varsoon have appeared near some ruins within the Steppes. They need to be dealt with accordingly. And finally, an old apprentice of mine Celeg Ixuri seems to have returned from the dead after searching for the secrets of Varsoon. He needs to be destroyed in his undead state he's very dangerous. Please be careful he was one of my most talented students, you might take friends with you for this. - Gildas", 91, 2490226, 2560000)
	AddQuestStepKill(Quest, 4, "I must find and destroy Celeg Ixuri near the ruins where I can find the Varsoon apprentices", 1, 100, "I'm afraid more things threaten our exploration parties within the Steppes. You can help by driving back some of the Steelhoof invaders. The Sabertooth chanters are also appearing to be a driving force behind the raids those gnolls have been making as of late. And it appears some undead apprentices of the mage Varsoon have appeared near some ruins within the Steppes. They need to be dealt with accordingly. And finally, an old apprentice of mine Celeg Ixuri seems to have returned from the dead after searching for the secrets of Varsoon. He needs to be destroyed in his undead state he's very dangerous. Please be careful he was one of my most talented students, you might take friends with you for this. - Gildas", 11, 2490842)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
    UpdateQuestZone(Quest,"Thundering Steppes")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
    Dialog.AddDialog( "This is your final task.  I cannot thank you enough for your help. I will see if my friend can finish your robe in time for your return.  Please take this note; it explains what I need.")
--	Dialog.AddVoiceover("voiceover/english/selwyn_oakheart/qey_south/quests/selwyn_oakheart/selwyn001.mp3", 390832885, 49061382)
	PlayFlavor(QuestGiver,"","","thanks", 0, 0, Player)
	Dialog.AddOption( "Thank you Gildas.  I will return.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have helped drive back some of the Steelhoof invaders.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have found and killed several Sabertooth chanters.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have found and destroyed several of Varsoon's undead apprentices.")
    CheckProgress(Quest, QuestGiver, Player)

end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have destroyed Celeg Ixuri.")
    CheckProgress(Quest, QuestGiver, Player)
end	
	

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5617, 1) and QuestStepIsComplete(Player, 5617, 2) and QuestStepIsComplete(Player, 5617, 3) and QuestStepIsComplete(Player, 5617, 4) then
	UpdateQuestTaskGroupDescription(Quest, 1, "I have completed all that Gildas has asked of me. I should return to him.")
    UpdateQuestZone(Quest,"The Elddar Grove")
	AddQuestStepChat(Quest, 5, "I should return to Gildas in The Elddar Grove.", 1, "I need to speak to Gildas Cedartree in The Elddar Grove.", 11, 2070033)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end
end	


function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "	I have returned to Gildas in The Elddar Grove.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken to Gildas Cedartree in The Elddar Grove.")

	UpdateQuestDescription(Quest, "Gildas has rewarded me with a silver touched robe.")
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
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


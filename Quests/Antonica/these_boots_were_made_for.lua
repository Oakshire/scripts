--[[
    Script Name    : Quests/Antonica/these_boots_were_made_for.lua
    Script Author  : Premierio015
    Script Date    : 2023.04.20 06:04:34
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]



require "SpawnScripts/Generic/DialogModule"
require "SpawnScripts/Generic/PlayerHistory"

function Init(Quest)
	AddQuestStepHarvest(Quest, 1, "Harvest 100 iron clusters in Antonica for Hwal, making sure to save them to give to him.", 100, 100, "Hwal needs me to gather the raw materials for the weapons he's planning to make for the sentries.", 1085,  8395)
		AddQuestStepHarvest(Quest, 2, "Harvest 100 severed maple in Antonica for Hwal, making sure to save the wood to give to him.", 100, 100, "Hwal needs me to gather the raw materials for the weapons he's planning to make for the sentries.", 824,  12101)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	SetQuestFeatherColor(Quest, 1) -- PURPLE FOR HERITAGE QUESTS
	SetQuestRewardStatus(Quest, 29666)
end




function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Much thanks to ya, stranger!  I'm not sure I could finish the job without your help!  I need plenty of iron and wood for these weapons.  It's a lot of work, but I'm sure that together we can get it done in half the time that it'd take me to do it alone!")
	Dialog.AddVoiceover("voiceover/english/hwal_rucksif/antonica/hwal_rucksif003.mp3", 584697893, 4066288386)
		Dialog.AddEmote("nod")
	Dialog.AddOption("It'd better be worth my time, dwarf.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "You've harvested 100 iron clusters in Antonica for Hwal.")
   CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "You've harvested 100 severed maple in Antonica for Hwal.")
    CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5805, 1) and QuestStepIsComplete(Player, 5805, 2) then
        	UpdateQuestTaskGroupDescription(Quest, 1, "I've gathered the raw materials Hwal needs.")
      	AddQuestStepChat(Quest, 3, "Return to Hwal with at least 10 iron clusters and 10 maple branches.", 1, "I need to bring back at least 10 iron clusters and 10 severed maple branches.", 11, 120197)
  	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
  	elseif QuestStepIsComplete(Player, 5805, 12) and QuestStepIsComplete(Player, 5805, 13) then
  	    	UpdateQuestTaskGroupDescription(Quest, 9, "I've gathered the steel and the leather Hwal's new boots will need.")
  	 	AddQuestStepChat(Quest, 14, "Speak with Minty in the Thundermist Village about making the boots.", 1, "Now that I've got the steel and leather for the boots, I should speak with Minty Frostbeard.", 11, 2490173)
	AddQuestStepCompleteAction(Quest, 14, "Step14Complete")
end
  end

function Step3Complete(Quest, QuestGiver, Player)
    if HasItem(Player,  8395) and GetItemCount(8395) >= 100  then
            RemoveItem(Player, 8395, 100)
    elseif HasItem(Player, 12101) and GetItemCount(12101) >=  100 then
       RemoveItem(Player, 12101, 100)
     end
	UpdateQuestStepDescription(Quest, 3, "You've given Hwal the raw materials he needs.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've given Hwal all the components he needs.")

	AddQuestStepKill(Quest, 4, "Search Blackburrow for the ore Hwal needs for the blade.", 1, 50, "Hwal has instructed me to find some rarer components for the guard captain's sword he is smithing.", 1124, 170010, 170029)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "You've found the ore Hwal needs for the captain's sword.")

	AddQuestStepKill(Quest, 5, "Deep in Stormhold is a rare wood Hwal must have for the hilt.", 1, 50, "Hwal has instructed me to find some rarer components for the guard captain's sword he is smithing.", 826, 150024, 150239)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "You've found the wood Hwal needs for the captain's sword.")

	AddQuestStepKill(Quest, 6, "Hwal specified a rare and tough griffin hide from the Thundering Steppes for the bindings.", 1, 100, "Hwal has instructed me to find some rarer components for the guard captain's sword he is smithing.", 122, 2490072)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "You've found the leather Hwal needs for the captain's sword.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've found the rare components Hwal needs for the captain's sword.")

	AddQuestStepChat(Quest, 7, "Return to Hwal with the components.", 1, "I need to return to Hwal with the components I've gathered.", 11, 120197)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "You've returned the components to Hwal.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I've returned the components for the captain's sword to Hwal.")

	AddQuestStep(Quest, 8, "Search Blackburrow for the stout they create in their brewery for Hwal.", 1, 100, "Hwal is thirsty, and for some reason has decided that he wants me to get him a stout.", 308)
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "You've found the Blackburrow stout Hwal wants.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I managed to find the Blackburrow stout Hwal wanted to quench his thirst.")

	AddQuestStepChat(Quest, 9, "Return to Hwal with the stout you took from Blackburrow.", 1, "Got the Blackburrow stout, now I just need to return with it to Hwal.", 11, 120197)
	AddQuestStepCompleteAction(Quest, 9, "Step9Complete")
end

function Step9Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 9, "You've given Hwal the stout he asked for.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I've returned the stout to Hwal.")

	AddQuestStepKill(Quest, 10, "Lay Hwal's grandfather's ghost to rest.  He resides beneath Vhalen's tower.", 1, 100, "Hwal's grandfather needs to be laid to rest.  His current incarnation; however, may be... unwilling...", 11, 8380000)
	AddQuestStepCompleteAction(Quest, 10, "Step10Complete")
end

function Step10Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 10, "You've laid the spirit of Garanel Rucksif to rest.")
	UpdateQuestTaskGroupDescription(Quest, 7, "Garanel Rucksif has been laid to rest, and will trouble people no longer.")

	AddQuestStepChat(Quest, 11, "Speak with Hwal and let him know that his grandfather has been laid to rest.", 1, "I need to return to Hwal and let him know that I put Garanel.", 11, 120197)
	AddQuestStepCompleteAction(Quest, 11, "Step11Complete")
end

function Step11Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 11, "You've laid the spirit of Garanel Rucksif to rest.")
	UpdateQuestTaskGroupDescription(Quest, 8, "I've informed Hwal that his grandfather has been laid to rest.")

	AddQuestStepKill(Quest, 12, "Harvest the antelopes in the Steppes for a special leather for Hwal's boots.", 1, 50, "Hwal has given me a list of things I will need for his new pair of boots.", 123, 2490052)
	AddQuestStepCompleteAction(Quest, 12, "Step12Complete")
		AddQuestStepKill(Quest, 13, "Search the Firerock giants in the Steppes for a special steel for Hwal's boots.", 1, 50, "Hwal has given me a list of things I will need for his new pair of boots.", 775, 2490071)
	AddQuestStepCompleteAction(Quest, 13, "Step13Complete")
end

function Step12Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 12, "You've found the leather for Hwal's boots.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step13Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 13, "You've found the steel for Hwal's boots.")
   CheckProgress(Quest, QuestGiver, Player)
end

function Step14Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 14, "You've spoken with Minty Frostbeard about making Hwal's boots.")
    
	AddQuestStepChat(Quest, 15, "Speak with Minty again after she's had time to make the boots.", 1, "Now that I've got the steel and leather for the boots, I should speak with Minty Frostbeard.", 11, 2490173)
	AddQuestStepCompleteAction(Quest, 15, "Step15Complete")
	        local time = os.time()
        SetPlayerHistory(Player, HISTORY.ANTONICA_BOOTS_HERITAGE_QUEST_WAIT, time)
end

function Step15Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 15, "You've picked up the boots Minty made for Hwal.")
	UpdateQuestTaskGroupDescription(Quest, 10, "I've spoken with Minty and had her make Hwal's boots.")

	AddQuestStepChat(Quest, 16, "Return to Hwal with the boots Minty made for him.", 1, "I need to return to Hwal with the boots that Minty made for him.", 11, 120197)
	AddQuestStepCompleteAction(Quest, 16, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 16, "You've returned with the boots Minty made for Hwal.")
	UpdateQuestTaskGroupDescription(Quest, 11, "I returned the boots Minty made to Hwal.")

	UpdateQuestDescription(Quest, "After a grueling series of tasks, Hwal Rucksif had the audacity to reward me with his... old work boots. Imagine that!  All that work, and all he leaves me with is a pair of smelly old Dwarven Work Boots.  At least they look broken in.")
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
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		Step8Complete(Quest, QuestGiver, Player)
	elseif Step == 9 then
		Step9Complete(Quest, QuestGiver, Player)
	elseif Step == 10 then
		Step10Complete(Quest, QuestGiver, Player)
	elseif Step == 11 then
		Step11Complete(Quest, QuestGiver, Player)
	elseif Step == 12 then
		Step12Complete(Quest, QuestGiver, Player)
	elseif Step == 13 then
		Step13Complete(Quest, QuestGiver, Player)
	elseif Step == 14 then
		Step14Complete(Quest, QuestGiver, Player)
	elseif Step == 15 then
		Step15Complete(Quest, QuestGiver, Player)
	elseif Step == 16 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

--[[
	Script Name		:	TasksaboardtheFarJourney.lua
	Script Purpose	:	Handles the quest, "Tasks aboard the Far Journey"
	Script Author	:	Cynnar
	Script Date		:	2/23/2020
	Script Notes	:	

	Zone			:	Hallmark
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]

local Waulon = 270002
local CaptainVarlos = 270000
local Ingrid = 270001

local ARat = 270009
local Goblin = 270008

local WaulonsHat = 15354
local ShardOfLucin = 12565

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I should speak to Waulon.", 1, "Captain Varlos has asked me to speak to Waulon.", 11, Waulon)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step2Init(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke to Waulon.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I spoke to Waulon as Captain Varlos had asked of me.")

	AddQuestStepObtainItem(Quest, 2, "I should start by opening boxes on the deck.", 1, 100, "Waulon has asked me to look for his hat in one of the boxes on the deck.", 11, WaulonsHat)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step3Init(Quest, QuestGiver, Player)
	SetTutorialStep(Player, 17)
	UpdateQuestStepDescription(Quest, 2, "I found Waulon's hat.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I found Waulon's hat in one of the boxes.")

	AddQuestStepChat(Quest, 3, "I should speak to Waulon.", 1, "Now that I found Waulon's hat, I should return it.", 258, Waulon)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step4Init(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I returned Waulon's hat to him.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I returned Waulon's hat.")
	
	AddQuestStepChat(Quest, 4, "I should speak to Ingrid.", 1, "Waulon has asked me to speak to Ingrid.", 11, Ingrid)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step5Init(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have spoken to Ingrid as Waulon had asked.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I have spoken to Ingrid.")

	AddQuestStepObtainItem(Quest, 5, "I should find a way to buy the shard from Merchant Vim.", 1, 100, "Ingrid would like me to buy her a Shard of Luclin.", 11, ShardOfLucin)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
	SetTutorialStep(Player, 24)
end

function Step6Init(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have purchased a Shard of Luclin.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I purchased a Shard of Luclin.")

	AddQuestStepChat(Quest, 6, "Return to Ingrid.", 1, "Ingrid would like me to give her the Shard of Luclin.", 183, Ingrid)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
	SetTutorialStep(Player, 30)
end

function Step7Init(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I gave the Shard of Luclin to Ingrid.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I gave the Shard of Luclin to Ingrid.")	
	
	AddQuestStepChat(Quest, 7, "I should speak to Captain Varlos again.", 1, "Captain Varlos is trying to get my attention.", 11, CaptainVarlos)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")		
end

function Step8Init(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I spoke with Captain Varlos as Ingrid has asked of me.")
	UpdateQuestTaskGroupDescription(Quest, 7, "I have spoken to Captain Varlos.")

	AddQuestStepKill(Quest, 8, "I must kill the rats on the deck.", 2, 100, "Captain Varlos has asked me to kill the rats on the deck.", 99, ARat)
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end

function Step9Init(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I have killed the rats.")
	UpdateQuestTaskGroupDescription(Quest, 8, "I killed the rats that Captain Varlos requested.")

	AddQuestStepChat(Quest, 9, "I should speak to Captain Varlos.", 1, "Inform Captain Varlos that you have exterminated the vermin.", 11, CaptainVarlos)
	AddQuestStepCompleteAction(Quest, 9, "Step9Complete")
end

function Step10Init(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 9, "I spoke to Captain Varlos.")
	UpdateQuestTaskGroupDescription(Quest, 9, "I spoke to Captain Varlos.") --this this is not 100% like Live but seeing the same entry in your journal for step 9 and 10 like Live is dumb

	AddQuestStepKill(Quest, 10, "I must kill the goblin.", 1, 100, "Captain Varlos has ordered you to kill the escaped goblin.", 11, Goblin)
	AddQuestStepCompleteAction(Quest, 10, "QuestComplete")
end

function CurrentStep(Quest, QuestGiver, Player)
	if GetQuestStep(Player, 524) == 2 then
		i = 1
		spawns = GetSpawnListBySpawnID(Player, 270010)
		repeat
			spawn = GetSpawnFromList(spawns, i-1)
			if spawn then
				ChangeHandIcon(spawn, 1)
				SpawnSet(NPC, "targetable", 1, true, true)
			end
			i = i + 1
		until spawn == Nil
		InstructionWindow(Player, -1.0, "You completed the first part of the quest. As you complete quests and defeat enemies, you earn experience points. This is represented in your experience point display. Filling your experience point display is always a requirement to gain your next level. As you gain levels, you will gain access to more powerful skills and abilities.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_011_f16aa848.mp3", 1702963584, 3318288731, "tutorial_stage_15", "", "continue")
		FlashWindow(Player, "MainHUD.Experience", 15.0)			
		SetTutorialStep(Player, 14)
		AddPrimaryEntityCommandAllSpawns(Player, 270010, "open", 10, "open")
		chest = GetRandomSpawnByID(Player, 270010)
		GiveLoot(chest, Player, 0, 185427)
		GiveLoot(chest, Player, 0, 20902)
		GiveLoot(chest, Player, 0, 15354)					
	elseif GetQuestStep(Player, 524) == 3 then			
		InstructionWindow(Player, -1.0, "The items are now in your inventory.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_014_eaa89ef7.mp3", 361706387, 1106127199, "tutorial_stage_18", "", "continue")		
		SetTutorialStep(Player, 16)
	elseif GetQuestStep(Player, 524) == 5 then
		InstructionWindowClose(Player)
		InstructionWindow(Player, -1.0, "A merchant is a special type of character who buys and sells things. Find and double left click on Merchant Vim to start a transaction.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_020_6ea052d3.mp3", 4250953579, 3003156164, "tutorial_stage_24", "Double left click on Merchant Vim.", "server")		
	elseif GetQuestStep(Player, 524) == 6 then
		InstructionWindowClose(Player)
		InstructionWindow(Player, -1.0, "You have made the first of many purchases. Now close the merchant window and speak to Ingrid to complete the quest.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_026_d484fa8d.mp3", 4213145594, 1811880905, "tutorial_stage_31", "Return to Ingrid and speak to her.", "server")		
	elseif GetQuestStep(Player, 524) == 7 then
		InstructionWindowClose(Player)
		captain = GetSpawn(Player, 270000)	
		AddTimer(captain, 2000, "get_attention_init", 1, Player) 
	elseif GetQuestStep(Player, 524) == 8 then
		AddPrimaryEntityCommandAllSpawns(Player, 270009, "attack", 10000.0, "attack")
		i=1
		spawns = GetSpawnListBySpawnID(Player, 270009)
		repeat
			rat = GetSpawnFromList(spawns, i-1)
			if rat then
				SetAttackable(rat, 1)
				if HasLootItem(rat, 11615) == false then
					AddLootItem(rat, 11615)	
				end
			end
			i = i + 1
		until rat == Nil
		if GetQuestStepProgress(Player, 524, 8) == 1 then -- if we already have credit for a kill, remove one rat
			delrat = GetRandomSpawnByID(Player, 270009)
			Despawn(delrat)
		end
		if HasItem(Player, 88140) == false then
			GiveImmediateQuestReward(Quest, Player, 0, 0, "88140")
		end
		if HasItemEquipped(Player, 88140) == false then
			ShowWindow(Player, "Inventory.Inventory", 0)
			InstructionWindow(Player, -1.0, "Open your inventory by clicking the inventory button, then right click on the club the Captain just gave you.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_028_458903e8.mp3", 4151437794, 834827635, "equipping_weapons", "Open your inventory. (click on the inventory button)", "open Inventory")
			ShowWindow(Player, "MainHUD.StartMenu", 1)
			FlashWindow(Player, "MainHUD.StartMenu.inventory", 20.0)
		end
	elseif GetQuestStep(Player, 524) == 9 then
		SetTutorialStep(Player, 49)
		InstructionWindow(Player, -1.0, "You have earned enough experience to gain a level. Congratulations.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_046_7e59cd54.mp3", 3272157184, 1454283978, "tutorial_stage_50", "", "continue")
		i=1
		spawns = GetSpawnListBySpawnID(Player, 270009)
		repeat
			delrat = GetSpawnFromList(spawns, i-1)
			if IsAlive(delrat) then
				Despawn(delrat)
			end
			i = i + 1
		until delrat == Nil
	elseif GetQuestStep(Player, 524) == 10 then
		AddPrimaryEntityCommandAllSpawns(Player, 270008, "attack", 10000.0, "attack")
		i=1
		spawns = GetSpawnListBySpawnID(Player, 270011)
		repeat
			cage = GetSpawnFromList(spawns, i-1)
			if cage then
				Despawn(cage)
			end
			i = i + 1
		until cage == Nil
		i=1
		spawns = GetSpawnListBySpawnID(Player, 270009)
		repeat
			delrat = GetSpawnFromList(spawns, i-1)
			if delrat then
				Despawn(delrat)
			end
			i = i + 1
		until delrat == Nil
	end
end

function Step1Complete(Quest, QuestGiver, Player)
	GiveExp(Player, 110)
	Step2Init(Quest, QuestGiver, Player)
	CurrentStep(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	Step3Init(Quest, QuestGiver, Player)	
	CurrentStep(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	RemoveItem(Player, WaulonsHat)
	GiveImmediateQuestReward(Quest, Player, 0, 0, "9357")
	Step4Init(Quest, QuestGiver, Player)	
	CurrentStep(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)	
	Step5Init(Quest, QuestGiver, Player)	
	CurrentStep(Quest, QuestGiver, Player)
end

function Step5Complete(Quest, QuestGiver, Player)
	Step6Init(Quest, QuestGiver, Player)	
	CurrentStep(Quest, QuestGiver, Player)
end

function Step6Complete(Quest, QuestGiver, Player)
	Step7Init(Quest, QuestGiver, Player)	
	CurrentStep(Quest, QuestGiver, Player)
end

function Step7Complete(Quest, QuestGiver, Player)
	Step8Init(Quest, QuestGiver, Player)	
	CurrentStep(Quest, QuestGiver, Player)
end

function Step8Complete(Quest, QuestGiver, Player)	
	Step9Init(Quest, QuestGiver, Player)	
	CurrentStep(Quest, QuestGiver, Player)
end

function Step9Complete(Quest, QuestGiver, Player)
	Step10Init(Quest, QuestGiver, Player)	
	CurrentStep(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 10, "I have killed the goblin.")
	UpdateQuestTaskGroupDescription(Quest, 10, "I killed the escaped goblin.")

	UpdateQuestDescription(Quest, "I completed all the tasks assigned to me by Captain Varlos aboard the Far Journey.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step2Init(Quest, QuestGiver, Player)
		CurrentStep(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step3Init(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step4Init(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step5Init(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step6Init(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step7Init(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step8Init(Quest, QuestGiver, Player)
	elseif Step == 8 then
		Step9Init(Quest, QuestGiver, Player)
	elseif Step == 9 then
		Step10Init(Quest, QuestGiver, Player)
	elseif Step == 10 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_009.mp3", "", "point", 3537393303, 2188767436, Player)
	AddConversationOption(conversation, "Okay.")
	StartConversation(conversation, QuestGiver, Player, "Whoa there, the seas are gettin' a bit angry. Go speak ta' me first mate, Waulon. He might have something for ya' ta' do.")
	
	local Waulon = GetSpawn(QuestGiver, 270002)
	FaceTarget(QuestGiver, Waulon)	
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

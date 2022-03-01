--[[
	Script Name		:	FarJourneyFreeport.lua
	Script Purpose	:	Handles boat scripted events
	Script Author	:	LethalEncounter
	Script Date		:	6/28/2020
	Script Notes	:	
--]]

seen_step_45 = false

function signal_changed(zone, player, signal)
	if signal == "sys_client_avatar_ready" and HasQuest(player, 524) == false and HasCompletedQuest(player, 524) == false then
		i = 1
		spawns = GetSpawnListBySpawnID(player, 270010)
		repeat
			spawn = GetSpawnFromList(spawns, i-1)
			if spawn then
				ChangeHandIcon(spawn, 0)
			end
			i = i + 1
		until spawn == nil
		InstructionWindow(player, 10.0, "Welcome to Norrath, the world of EverQuest II. Left click on the help button at any time for more detailed help and information.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_001_63779ca0.mp3", 3450229107, 2555116653, "introduction", "", "continue")
		ShowWindow(player, "MainHUD.StartMenu", 1)
		FlashWindow(player, "MainHUD.StartMenu.help", 10.0)
		SetTutorialStep(player, 1)
	end
	if signal == "introduction" then
			ShowWindow(player, "MainHUD.StartMenu", 0)
			InstructionWindow(player, -1.0, "EverQuest II can be played in either a third person view, which you see now, or from a first person perspective. Scrolling the mouse wheel or pressing the F9 key will change your view. Try changing your view now.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_002_57cbfd77.mp3", 3053902814, 2060319388, "camera_control", "Switch the camera view to first-person. (mouse wheel up)", "camera firstperson", "Switch the camera view to third-person. (mouse wheel down)", "camera thirdperson")
			SetTutorialStep(player, 2)
	end
	if signal == "camera_control" then
			InstructionWindow(player, -1.0, "The first thing you need to know how to do is look around using the mouse. Hold down the right mouse button and move the mouse right and left. Notice that moving your mouse up and down will make you look in those directions as well.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_003_a3b38888.mp3", 130321605, 3870508467, "tutorial_stage_4", "Look to the left (hold right mouse button and move the mouse left)", "mouselook left", "Look to the right (hold right mouse button and move the mouse right)", "mouselook right", "Look up (hold right mouse button and move the mouse up)", "mouselook up", "Look down (hold right mouse button and move the mouse down)", "mouselook down")
			SetTutorialStep(player, 3)
	end
	if signal == "tutorial_stage_4" and GetTutorialStep(player) == 3 then
			InstructionWindow(player, -1.0, "Use the A, S, W, and D keys for basic movement. These keys cause you to turn left and right as well as to move forward and back.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_004_ff730a9b.mp3", 825281976, 127545929, "tutorial_stage_5", "Turn left. (press the A key)", "move turnleft", "Turn right. (press the D key)", "move turnright", "Move forward. (press the W key)", "move forward", "Move backward. (press the S key)", "move back")
			SetTutorialStep(player, 4)
	end
	if signal == "tutorial_stage_5" and GetTutorialStep(player) == 4 then
			InstructionWindow(player, -1.0, "Double left click on Captain Varlos to interact with him.", "", 0, 0, "tutorial_stage_6", "", "server")
			SetTutorialStep(player, 5)
	end
	if signal == "tutorial_stage_9" and GetTutorialStep(player) == 8 then
			ShowWindow(player, "MainHUD.StartMenu", 0)
			FlashWindow(player, "MainHUD.StartMenu.quest_journal", 0.0)
			InstructionWindow(player, -1.0, "The quest journal will keep track of all important quest information for you.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_008_dea98146.mp3", 1585802421, 4158930887, "tutorial_stage_10", "", "continue")
			SetTutorialStep(player, 9)
	end
	if signal == "tutorial_stage_10" and GetTutorialStep(player) == 9 then
			FlashWindow(player, "Journals.ActiveQuest", 6.5)
			InstructionWindow(player, -1.0, "This is your quest helper. It displays the current step of your active quest.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_009_7270f5ed.mp3", 1886677883, 3646680727, "tutorial_stage_13", "", "continue")
			SetTutorialStep(player, 10)
	end
	if (signal == "tutorial_stage_13" and GetTutorialStep(player) == 10) or (signal == "sys_client_avatar_ready" and HasQuest(player, 524) == true and GetQuestStep(player, 524) == 1) then
			InstructionWindow(player, -1.0, "Place your mouse pointer on Waulon. Notice that your mouse pointer changes shape. This indicates what the normal action of a double left click on that object or person will do. In this case you will hail Waulon. Double left click on Waulon now.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_010_73e16723.mp3", 1311374862, 3104741396, "tutorial_stage_14", "Double left click on Waulon to hail him.", "server")
			ShowWindow(player, "Journals.JournalsQuest", 0)
			SetTutorialStep(player, 13)
	end
	if (signal == "tutorial_stage_15" and GetTutorialStep(player) == 14)  or (signal == "sys_client_avatar_ready" and HasQuest(player, 524) == true and GetQuestStep(player, 524) == 2) then		
		InstructionWindow(player, -1.0, "Move your mouse pointer over the boxes. Notice that your mouse pointer changes shape again, and the boxes start to glow. Double left click to open each of the boxes.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_012_9ba468fb.mp3", 1009896073, 25784171, "tutorial_stage_16", "Double left click on a box to open it.", "server")
		SetTutorialStep(player, 15)
	end
	if signal == "tutorial_stage_18" and GetTutorialStep(player) == 16 then
			ShowWindow(player, "Inventory.Inventory", 0)
			InstructionWindow(player, -1.0, "Managing your inventory and equipment is very important. It is how you use all of the gear that you will find on your adventures. Left click on the inventory button.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_015_46f20016.mp3", 2394903675, 552673556, "tutorial_stage_19", "Open your inventory. (click on the inventory button)", "open Inventory")
			ShowWindow(player, "MainHUD.StartMenu", 1)
			FlashWindow(player, "MainHUD.StartMenu.inventory", 16.0)
			SetTutorialStep(player, 18)
	end
	if signal == "tutorial_stage_19" and GetTutorialStep(player) == 18 then
			ShowWindow(player, "MainHUD.StartMenu", 0)
			FlashWindow(player, "MainHUD.StartMenu.inventory", 0.0)
			InstructionWindow(player, -1.0, "This is your inventory. These slots represent available space to carry items.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_016_3f62b542.mp3", 2423921165, 856268766, "tutorial_stage_20", "", "continue")
			ShowWindow(player, "Inventory.Inventory", 1)
			FlashWindow(player, "Inventory.Inventory.GeneralPage.InvSlot0", 6.0)
			FlashWindow(player, "Inventory.Inventory.GeneralPage.InvSlot1", 6.0)
			FlashWindow(player, "Inventory.Inventory.GeneralPage.InvSlot2", 6.0)
			FlashWindow(player, "Inventory.Inventory.GeneralPage.InvSlot3", 6.0)
			FlashWindow(player, "Inventory.Inventory.GeneralPage.InvSlot4", 6.0)
			FlashWindow(player, "Inventory.Inventory.GeneralPage.InvSlot5", 6.0)
			SetTutorialStep(player, 19)
	end
	if (signal == "tutorial_stage_20" and GetTutorialStep(player) == 19) or (signal == "sys_client_avatar_ready" and HasQuest(player, 524) == true and GetQuestStep(player, 524) == 3)  then
			InstructionWindow(player, -1.0, "This is your equipment. These slots represent the locations you can equip with armor, weapons, jewelry, and other items. Double left click on the tunic in your inventory.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_017_d8bd9733.mp3", 598366253, 952105390, "tutorial_stage_21", "Double left click on the threadbare tunic to equip it.", "server")
			FlashWindow(player, "Inventory.Inventory.EquipmentPage.EqSlot0", 8.0)
			FlashWindow(player, "Inventory.Inventory.EquipmentPage.EqSlot1", 8.0)
			FlashWindow(player, "Inventory.Inventory.EquipmentPage.EqSlot2", 8.0)
			FlashWindow(player, "Inventory.Inventory.EquipmentPage.EqSlot3", 8.0)
			FlashWindow(player, "Inventory.Inventory.EquipmentPage.EqSlot4", 8.0)
			FlashWindow(player, "Inventory.Inventory.EquipmentPage.EqSlot5", 8.0)
			FlashWindow(player, "Inventory.Inventory.EquipmentPage.EqSlot6", 8.0)
			FlashWindow(player, "Inventory.Inventory.EquipmentPage.EqSlot7", 8.0)
			FlashWindow(player, "Inventory.Inventory.EquipmentPage.EqSlot8", 8.0)
			FlashWindow(player, "Inventory.Inventory.EquipmentPage.EqSlot9", 8.0)
			FlashWindow(player, "Inventory.Inventory.EquipmentPage.EqSlot10", 8.0)
			FlashWindow(player, "Inventory.Inventory.EquipmentPage.EqSlot11", 8.0)
			FlashWindow(player, "Inventory.Inventory.EquipmentPage.EqSlot12", 8.0)
			FlashWindow(player, "Inventory.Inventory.EquipmentPage.EqSlot13", 8.0)
			FlashWindow(player, "Inventory.Inventory.EquipmentPage.EqSlot14", 8.0)
			FlashWindow(player, "Inventory.Inventory.EquipmentPage.EqSlot15", 8.0)
			FlashWindow(player, "Inventory.Inventory.EquipmentPage.EqSlot16", 8.0)
			FlashWindow(player, "Inventory.Inventory.EquipmentPage.EqSlot17", 8.0)
			FlashWindow(player, "Inventory.Inventory.EquipmentPage.EqSlot18", 8.0)
			FlashWindow(player, "Inventory.Inventory.EquipmentPage.EqSlot19", 8.0)
			FlashWindow(player, "Inventory.Inventory.EquipmentPage.EqSlot20", 8.0)
			FlashWindow(player, "Inventory.Inventory.EquipmentPage.EqSlot21", 8.0)
			SetTutorialStep(player, 20)
	end
	if signal == "tutorial_stage_21" and GetTutorialStep(player) == 20 then
		InstructionWindow(player, -1.0, "Notice the tunic now occupies the chest equipment slot and you are now wearing it.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_018_8786e939.mp3", 3902294834, 2836623234, "tutorial_stage_22", "", "continue")
		FlashWindow(player, "Inventory.Inventory.EquipmentPage.EqSlot3", 6.0)
		SetTutorialStep(player, 21)
	end
	if signal == "tutorial_stage_22" and GetTutorialStep(player) == 21 then
			FlashWindow(player, "Inventory.Inventory.EquipmentPage.Chest3", 0.0)
			InstructionWindow(player, -1.0, "Waulon is waiting for you to return with his hat. Close your inventory window and go talk to him. Remember, double left clicking on Waulon will start the conversation.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_019_9da1b75d.mp3", 741062937, 535829184, "tutorial_stage_23", "Double left click on Waulon to hail him.", "server")			
	end
	if signal == "sys_client_avatar_ready" and HasQuest(player, 524) == true and GetQuestStep(player, 524) == 5 then
		InstructionWindow(player, -1.0, "A merchant is a special type of character who buys and sells things. Find and double left click on Merchant Vim to start a transaction.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_020_6ea052d3.mp3", 4250953579, 3003156164, "tutorial_stage_24", "Double left click on Merchant Vim.", "server")
		SetTutorialStep(player, 24)
	end
	if signal == "tutorial_stage_25" and GetTutorialStep(player) == 24 then
		InstructionWindow(player, -1.0, "The sell tab displays the items in your inventory that a merchant is interested in and how much they will pay for each item. Different merchants are interested in different things, and the price they will pay varies.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_022_11c56393.mp3", 3020037974, 1310705478, "tutorial_stage_26", "", "continue")			
		SetTutorialStep(player, 25)
	end
	if signal == "tutorial_stage_26" and GetTutorialStep(player) == 25 then
		InstructionWindow(player, -1.0, "Congratulations. Now left click on the buy tab", "voiceover/english/narrator/boat_06p_tutorial02/narrator_024_d8a4efd6.mp3", 2701661062, 119120428, "tutorial_stage_28", "Click on the 'Buy' tab in the merchant window.", "pane Merchant Buy")
		SetTutorialStep(player, 26)
	end
	if signal == "tutorial_stage_28" and GetTutorialStep(player) == 26 then
		InstructionWindow(player, -1.0, "Double left click on the Shard of Luclin.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_025_fae8d9aa.mp3", 2465701012, 531235298, "tutorial_stage_30", "Double left click on the Shard of Luclin.", "server")		
		SetTutorialStep(player, 28)
	end

	if signal == "equipping_weapons" then
		SetTutorialStep(player, 34)
		ShowWindow(player, "MainHUD.StartMenu", 0)
		FlashWindow(player, "MainHUD.StartMenu.inventory", 0.0)
		InstructionWindow(player, -1.0, "This is an action menu. Right clicking on any character, item, or interface element will bring up the action menu for that object.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_029_759b20ee.mp3", 2551751095, 1683887648, "tutorial_stage_35", "Right click on an item in your inventory.", "open RadialMenu")
		ShowWindow(player, "Inventory.Inventory", 1)
	end
	if signal == "tutorial_stage_35" then
		SetTutorialStep(player, 35)
		InstructionWindow(player, -1.0, "Left click on the examine action.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_030_ae336060.mp3", 1661740791, 1051227725, "tutorial_stage_36", "Right click on an item, then left click on the examine button.", "open ExamineItem")
	end
	if signal == "tutorial_stage_36" then
		SetTutorialStep(player, 36)
		InstructionWindow(player, -1.0, "This window shows the detailed specifics about an item.  Notice that the name of the item is white.  This indicates that the item is a good match for you.  If an item's name ever turns grey, you will want to replace it with a better version.  A red name indicates that the item is either unusable by your character class or out of your level range.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_030_ae336060.mp3", 1307292988, 58658687, "tutorial_stage_37", "", "continue")
	end
	if signal == "tutorial_stage_37" then
		SetTutorialStep(player, 37)
		InstructionWindow(player, -1.0, "Left clicking and dragging on an item will pick that item up and allow you to move it from one slot to another. Pick up the club.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_032_c4d45830.mp3", 1069757593, 1169701151, "tutorial_stage_38", "", "continue")
	end
	if signal == "tutorial_stage_38" then
		SetTutorialStep(player, 38)
		InstructionWindow(player, -1.0, "Releasing the mouse button over an available slot will drop the item again.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_033_7310c971.mp3", 329734483, 2927325554, "tutorial_stage_39", "", "continue")
	end
	if signal == "tutorial_stage_39" then
		SetTutorialStep(player, 39)
		InstructionWindow(player, -1.0, "If you drag and drop items onto the paper doll display, your character will attempt to equip that item. If the item cannot be equipped, it will automatically be stored into the first available inventory slot. Try auto-equipping the club.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_034_cb993d34.mp3", 2169570288, 2277767239, "tutorial_stage_40", "Left click and hold down the mouse button on the splintered club, then drag it to your character display.", "server")
		FlashWindow(player, "Inventory.Inventory.EquipmentPage.PaperDoll", 6.0)
	end
	if (signal == "tutorial_stage_40" and GetTutorialStep(player) == 39) or (signal == "sys_client_avatar_ready" and HasQuest(player, 524) == true and GetQuestStep(player, 524) == 8) then
		SetTutorialStep(player, 40)
		InstructionWindow(player, -1.0, "Before approaching a potential enemy, you should evaluate a few things. This is your health display. As you are injured, your health  decreases. If it runs out completely you will collapse and could die. It is very important to keep an eye on your health at all times.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_036_ff1a8605.mp3", 4286041154, 293958730, "tutorial_stage_42", "", "continue")
		FlashWindow(player, "MainHUD.Player.HealthBar", 18.0)
		FlashWindow(player, "MainHUD.Player.Name", 18.0)
	end
	if signal == "tutorial_stage_42" then
		SetTutorialStep(player, 42)
		FlashWindow(player, "MainHUD.Player.HealthBar", 0.0)
		FlashWindow(player, "MainHUD.Player.Name", 0.0)
		InstructionWindow(player, -1.0, "It is also important to consider how powerful your opponent is. Place your mouse cursor onto the rat.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_037_e7c85534.mp3", 1222496721, 345453852, "tutorial_stage_42.5", "", "continue")
	end
	if signal == "tutorial_stage_42.5" then
		InstructionWindow(player, -1.0, "Notice the mouse pointer changes color. This color indicates how difficult an opponent is. The cursor is white, which means that the rat is an even fight. Easier fights will be green or blue, meaning that these creatures are lower level than you. More difficult, higher level fights will be yellow, orange or red.  Looks however, can be deceiving.  Some creatures are very powerful for their size, and may require a group to conquer.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_038_19982dd.mp3", 1535688531, 2987489092, "tutorial_stage_43", "", "continue")
	end
	if signal == "tutorial_stage_43" then
		SetTutorialStep(player, 43)
		InstructionWindow(player, -1.0, "Notice his name is now flashing and there is a large targeting ring on the ground below him. This indicates that the rat is now your target.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_040_1e780c5b.mp3", 2045181958, 2230466907, "tutorial_stage_44.5", "", "continue")
		FlashWindow(player, "MainHUD.Target.HealthBar", 12.0)
		FlashWindow(player, "MainHUD.Target.Name", 12.0)
	end
	if signal == "tutorial_stage_44.5" then
		SetTutorialStep(player, 44)
		FlashWindow(player, "MainHUD.Player.HealthBar", 0.0)
		FlashWindow(player, "MainHUD.Player.Name", 0.0)
		InstructionWindow(player, -1.0, "You can see both the health and level of your target in the target display. You will also notice a downward pointing arrow above the rat's health bar.  This means that it is a below average difficulty opponent and can be defeated by a single player.  Opponents can range from three downward arrows (a very weak opponent) to three upward arrows (a heroic opponent requiring a group of players to defeat).  An opponent that indicates no arrows at all is considered to be of average difficulty.", "", 0, 0, "tutorial_stage_45", "", "continue")
		FlashWindow(player, "MainHUD.Target.HealthBar", 12.0)
		FlashWindow(player, "MainHUD.Target.Name", 12.0)
	end
	if signal == "tutorial_stage_45" then
		SetTutorialStep(player, 45)
		FlashWindow(player, "MainHUD.Player.HealthBar", 0.0)
		FlashWindow(player, "MainHUD.Player.Name", 0.0)
		InstructionWindow(player, -1.0, "Place your mouse pointer over the target box. The tool-tip will show you detailed information about the target and its encounter.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_040_1e780c5b.mp3", 0, 9, "tutorial_stage_45.5", "", "continue")
		FlashWindow(player, "MainHUD.Target.HealthBar", 12.0)
		FlashWindow(player, "MainHUD.Target.Name", 12.0)
	end
	if signal == "tutorial_stage_45.5" then
		FlashWindow(player, "MainHUD.Player.HealthBar", 0.0)
		FlashWindow(player, "MainHUD.Player.Name", 0.0)
		InstructionWindow(player, -1.0, "It's time for some adventure. Double left click on the rat to attack it.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_042_791576f2.mp3", 1866452922, 760329708, "tutorial_stage_46", "Double left click on the rat.", "server")
	end
	if signal == "tutorial_stage_47" then
		SetTutorialStep(player, 47)
		InstructionWindow(player, 10.0, "Always be sure to take everything you can from a fallen opponent. Many seemingly worthless items can be valuable to merchants or other players.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_044_dc34536.mp3", 4221017573, 1055524726, "tutorial_stage_48", "", "continue")
	end
	if signal == "tutorial_stage_48" then
		SetTutorialStep(player, 48)
		InstructionWindow(player, -1.0, "Congratulations! As you see, you also earn experience and rewards for defeating enemies.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_045_db304a48.mp3", 3903602846, 3454863851, "tutorial_stage_49", "", "continue")
	end	
	if signal == "tutorial_stage_50" then
		SetTutorialStep(player, 50)
		InstructionWindow(player, -1.0, "Notice that your experience point display is now empty, and your maximum health and power have increased.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_047_5c382a71.mp3", 1130515024, 564825664, "tutorial_stage_51", "", "continue")
		FlashWindow(player, "MainHUD.Player.HealthBarBkg", 6.0)
		FlashWindow(player, "MainHUD.Player.ManaBarBkg", 6.0)
		FlashWindow(player, "MainHUD.Player.Name", 6.0)
		FlashWindow(spawn, "MainHUD.Experience", 3.0)
	end
end

function item_equipped(zone, player, item_id, item_name, item_unique_id)
	if item_name == "threadbare tunic" then
		InstructionWindowGoal(player, 0)		
	elseif item_name == "splintered club" then
		InstructionWindowClose(player)
		FlashWindow(player, "Inventory.Inventory.EquipmentPage.PaperDoll", 0.0)
		InstructionWindow(player, -1.0, "Now, go and complete the quest that the Captain gave to you.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_035_acb2990a.mp3", 395837788, 2869210055, "tutorial_stage_40", "", "continue")
	end
end

function item_unequipped(zone, player, item_id, item_name, item_unique_id)
end

function spawn_killed(zone, dead, killer)
	if seen_step_45 == false and GetName(dead) == "a rat" then	
		InstructionWindowClose(killer)
		InstructionWindow(killer, 8.0, "Double click on the dead rat to search its body for valuables.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_043_a33564f1.mp3", 2552146487, 2098243078, "tutorial_stage_47", "Double left click on the corpse of a rat.", "open Loot")
		seen_step_45 = true
	end
	SendStateCommand(GetSpawn(killer, 270001), 0)
	SendStateCommand(GetSpawn(killer, 270004), 0)
	SendStateCommand(GetSpawn(killer, 270005), 0)	
	SendStateCommand(GetSpawn(killer, 270007), 0)
end
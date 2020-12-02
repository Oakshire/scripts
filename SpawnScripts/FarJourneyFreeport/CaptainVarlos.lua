--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/CaptainVarlos.lua
    Script Author  : Cynnar
    Script Date    : 2019.09.28 03:09:56
    Script Purpose : 
                   : 
--]]

get_attention_animation = true
needs_selection_help = true
finished_hailed = false
finished_where_am_I = false
finished_who_are_you = false
finished_how_did_I_get_here = false
finished_where_are_we_headed = false
finished_high_winds_1 = false
finished_high_winds_2 = false
finished_high_winds_3 = false
seen_quest_praise = false

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)

end

function get_attention_init(NPC, player)
	InstructionWindow(player, -1.0, "Captain Varlos looks like he is trying to get your attention.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_027_30c39009.mp3", 2146230300, 3258594756, "captain_attention", "", "continue")
	AddTimer(NPC, 100, "get_attention", 1, player)
end

function get_attention(NPC, player)	
	FaceTarget(NPC, player)
	SendStateCommand(NPC, 883)
	AddTimer(NPC, math.random(2000, 3000), "stop_get_attention", 1, player)	
end

function stop_get_attention(NPC, player)
	SendStateCommand(NPC, 0)
	if get_attention_animation and HasQuest(player, 524) == true and GetQuestStep(player, 524) == 7 then
		AddTimer(NPC, 500, "get_attention", 1, player)
	end
end

function hailed(NPC, player)
    FaceTarget(NPC, player)
	SendStateCommand(GetSpawn(NPC, 270000), 318)
	SendStateCommand(GetSpawn(NPC, 270000), 0)
	if HasQuest(player, 524) == false and HasCompletedQuest(player, 524) == false then
		InstructionWindowClose(player)
		needs_selection_help = true
		finished_hailed = false
		finished_where_am_I = false
		finished_who_are_you = false
		finished_how_did_I_get_here = false
		finished_where_are_we_headed = false
		finished_high_winds_1 = false
		finished_high_winds_2 = false
		finished_high_winds_3 = false
		Dialog.New(NPC, player)
		Dialog.AddDialog("Ahoy! 'Tis good to see you awake. Ya seem a little squiffy, least ya' cheated death!")
		Dialog.AddVoiceover("voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_001.mp3", 1930075150, 2666442405)
		Dialog.AddEmote("salute")
		Dialog.AddOption("Where am I?", "where_am_I")
		Dialog.Start()		
		AddTimer(NPC, 8000, "hailed_instructions", 1, player)
	elseif HasQuest(player, 524) == true and GetQuestStep(player, 524) == 7 then
		SetTutorialStep(player, 32)
		Dialog.New(NPC, player)
		Dialog.AddDialog("Avast ye! We need to talk.")
		Dialog.AddVoiceover("voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_011.mp3", 570868734, 3287597835)
		Dialog.AddOption("What is it?", "quest_step_7a")
		Dialog.Start()
		get_attention_animation = false
	elseif HasQuest(player, 524) == true and GetQuestStep(player, 524) == 10 then
		PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02_fvo_023.mp3", "You still need to kill that landlubber of a goblin! Get to it mate!", "", 3269557913, 3104212801)
	elseif HasQuest(player, 524) == true and GetQuestStep(player, 524) == 9 then
		SetTutorialStep(player, 51)
		Dialog.New(NPC, player)
		Dialog.AddDialog("Ya' made quick work of them vermin.")
		Dialog.AddVoiceover("voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_016.mp3", 1130776869, 4119313971)
		Dialog.AddOption("Thanks.", "quest_step_9")
		Dialog.Start()
	elseif HasCompletedQuest(player, 524) == true and seen_quest_praise == false then
		seen_quest_praise = true
		Dialog.New(NPC, player)
		Dialog.AddDialog("Arr! Ya saved the Far Journey and me crew! Seems ya' proved ta' be quite a hero.  Well, with the help of that young lass there, ya' do.")
		Dialog.AddVoiceover("voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_024.mp3", 998172564, 1159207795)
		Dialog.AddOption("It was nothing.", "quest_completed")
		Dialog.Start()
	elseif HasCompletedQuest(player, 524) == true then
		Dialog.New(NPC, player)
		Dialog.AddDialog("So, ya' ready ta go ashore matey?")
		Dialog.AddVoiceover("voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_027.mp3", 2285948102, 2994720481)
		Dialog.AddOption("Yes.", "ready_to_go_ashore")
		Dialog.AddOption("No. I would like some more time.", "conversation8_2")
		Dialog.Start()
	end
end

function quest_completed(NPC, player)
	Dialog.New(NPC, player)
	Dialog.AddDialog("There be the Island of Refuge, get ready ta' drop anchor. Just let me know when ya' want ta' go ashore.")
	Dialog.AddVoiceover("voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_025.mp3", 3643967618, 2645907420)
	Dialog.AddOption("Ok.", "drop_anchor")
	Dialog.Start()
end

function drop_anchor(NPC, player)
	PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_026.mp3", "Ingrid! Swing the lead and prepare to drop anchor!", "", 3011518245, 3851752713)
end

function ready_to_go_ashore(NPC, player)
	Dialog.New(NPC, player)
	Dialog.AddDialog("Don't ya' mind, we get paid ta' do that.")
	Dialog.AddVoiceover("voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_028.mp3", 1009737776, 2173458794)
	Dialog.AddOption("Good point.", "zone_to_isle")
	Dialog.Start()
end

function zone_to_isle(NPC, player)

	serverType = GetRuleFlagInt32("R_World", "StartingZoneRuleFlag")
	
	-- if no server type is set (default of 0 wildcard) or odd number means bit 1 is set
	if serverType == 0 or (serverType % 2) == 1 then
		-- DoF alignment, 0 = evil (Outpost of Overlord), 1 = good (Queens Colony)
		alignment = GetDeity(player)
		if alignment == 0 then
			Zone(GetZone(278), player) -- outpost of overlord
		else
			Zone(GetZone(253), player) -- queens colony
		end
	-- even value serverType > 0 (return 0) means isle of refuge (bit 2) is set
	else
		Zone(GetZone(325), player) -- isle of refuge
	end
end

function quest_step_9(NPC, player)	
	AddTimer(GetSpawn(NPC, 270013), 100, "attack")
	AddTimer(NPC, 1000, "quest_step_9b", 1, player)	
end

function quest_step_9b(NPC, player)	
	FaceTarget(NPC, GetSpawn(NPC, 270013))
	PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02_fvo_017.mp3", "Wait. Tis that a... No, it cain' be!", "", 1253231512, 1752159147)
	AddTimer(NPC, 5000, "quest_step_9c", 1, player)	
	SendStateCommand(GetSpawn(NPC, 270005), 250)	
end

function quest_step_9c(NPC, player)	
	Drake = GetSpawn(NPC, 270013)
	
	Anikra = GetSpawn(NPC, 270006)	
	Valik = GetSpawn(NPC, 270005)	
	Geredo = GetSpawn(NPC, 270004)
	
	FaceTarget(Anikra, Drake)
	FaceTarget(Valik, Drake)	
	FaceTarget(Geredo, Drake)		
	
	SendStateCommand(Anikra, 429)
	SendStateCommand(Valik, 429)
	SendStateCommand(Geredo, 429)
	
	SendStateCommand(GetSpawn(NPC, 270001), 219)
	SendStateCommand(GetSpawn(NPC, 270007), 631)
	PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02_fvo_018.mp3", "Quick! Ingrid, secure th'loot! Thar be a Drakota off the bow! Quick now! Secure those chests!", "", 3607547478, 39534308)
	AddTimer(NPC, 9000, "quest_step_9d", 1, player)	
end

function quest_step_9d(NPC, player)	
	PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02_fvo_019.mp3", "Everyone down! Watch it!", "", 2065401462, 2542613809)
	SendStateCommand(GetSpawn(NPC, 270007), 219)
	SendStateCommand(GetSpawn(NPC, 270001), 220)
	SendStateCommand(GetSpawn(NPC, 270004), 210)
	SendStateCommand(GetSpawn(NPC, 270006), 403)
	SendStateCommand(GetSpawn(NPC, 270005), 218)
	SendStateCommand(GetSpawn(NPC, 270002), 218)
	AddTimer(NPC, 3500, "quest_step_9e", 1, player)
	i=1
	spawns = GetSpawnListBySpawnID(player, 270011)
	repeat
		cage = GetSpawnFromList(spawns, i-1)
		if cage then
			Despawn(cage)			
		end
		i = i + 1
	until cage == Nil
end

function quest_step_9e(NPC, player)
	PerformCameraShake(player, 0.699999988079071)	
	PerformCameraShake(player, 0.5)	
	PerformCameraShake(player, 0.30000001192092896)
	PerformCameraShake(player, 0.10000000149011612)
	AddTimer(NPC, 3500, "quest_step_9f", 1, player)
end

function quest_step_9f(NPC, player)		
	AddTimer(NPC, 3500, "quest_step_9g", 1, player)
end

function quest_step_9g(NPC, player)	
	AddTimer(NPC, 3000, "quest_step_9h", 1, player)	
end

function quest_step_9h(NPC, player)
	SendStateCommand(GetSpawn(NPC, 270001), 0)
	SendStateCommand(GetSpawn(NPC, 270004), 0)
	SendStateCommand(GetSpawn(NPC, 270006), 0)
	SendStateCommand(GetSpawn(NPC, 270005), 0)
	SendStateCommand(GetSpawn(NPC, 270002), 0)	
	SendStateCommand(GetSpawn(NPC, 270007), 220)
	PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02_fvo_020.mp3", "Blimey! That was close! It has been near two months since the last reported sightings of one of them.", "", 814285897, 1688547621)
	AddTimer(NPC, 6000, "quest_step_9i", 1, player)	
end

function quest_step_9i(NPC, player)	
	PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02_fvo_021.mp3", "That damnable goblin has escaped. An' look, me beautiful ship is on fire!", "", 1401094820, 2183903275)
	AddTimer(NPC, 6000, "quest_step_9j", 1, player)
end

function quest_step_9j(NPC, player)	
	SetStepComplete(player, 524, 9)
	PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02_fvo_022.mp3", "Ye must put an end to 'is life, afore he tears me ship apart!", "", 2385052787, 1324494518)
end

function quest_step_7a(NPC, player)
	Dialog.New(NPC, player)
	Dialog.AddDialog("Well, 'tis a bit of a problem. Ya' see, there be rats on board. The vermin keep eating the supplies and I need ya' to go feed them to the deep, afore they eat anything else.")
	Dialog.AddVoiceover("voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_012.mp3", 705765462, 3202743441)
	Dialog.AddOption("So you want me to kill them?", "quest_step_7b")
	Dialog.Start()
end

function quest_step_7b(NPC, player)
	Dialog.New(NPC, player)
	Dialog.AddDialog("Yar! That's what we be needin'.")
	Dialog.AddVoiceover("voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_013.mp3", 3880459741, 170861362)
	Dialog.AddOption("How do you expect me to kill them?", "quest_step_7c")
	Dialog.Start()
end

function quest_step_7c(NPC, player)
	Dialog.New(NPC, player)
	Dialog.AddDialog("Wit this 'ere club. It is nice and splintered, sure ta' cause them some pain.")
	Dialog.AddVoiceover("voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_014.mp3", 2083163804, 202693960)
	Dialog.AddOption("Aye, aye, Captain!", "quest_step_7d")
	Dialog.Start()
end

function quest_step_7d(NPC, player)	
	SetStepComplete(player, 524, 7) 
end

function hailed_instructions(NPC, player)	
	if needs_selection_help == true then
		InstructionWindowGoal(player,0)	
		InstructionWindowClose(player)
		InstructionWindow(player, -1.0, "To respond to the Captain and other characters you will meet, left click on the response text.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_006_7521b625.mp3", 3936228257, 1877316160, "tutorial_stage_8", "Left click on one of the response options.", "server")
		needs_selection_help = false
	end
end
function where_am_I(NPC, player)
	finished_hailed = true
	--[[Say(NPC, "Testing function call")
	drake = GetSpawn(player, 270013)
	SendStateCommand(drake,65")
	Say(drake, "attacking")
	AddTimer(drake, 40000, "drake_rain")
	--]]
	if needs_selection_help == true then
		needs_selection_help = false
	else
		InstructionWindowGoal(player,0)	
		InstructionWindowClose(player)	
	end
	if finished_where_am_I == false then
		FaceTarget(NPC, player)
		Dialog.New(NPC, player)
		Dialog.AddDialog("Me apologies.")
		Dialog.AddVoiceover("voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_002.mp3", 2054400186, 1976167819)
		Dialog.AddOption("Who are you?", "who_are_you")
		Dialog.Start()
	end
end

function who_are_you(NPC, player)
	if finished_who_are_you == false then
		finished_where_am_I = true
		FaceTarget(NPC, player)
		Dialog.New(NPC, player)
		Dialog.AddDialog("I am Captain Draik Varlos, and this 'ere fine ship is the Far Journey.")
		Dialog.AddVoiceover("voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_003.mp3", 2565389482, 560555759)
		Dialog.AddOption("How did I get here?", "how_did_I_get_here")
		Dialog.Start()
	end
end

function how_did_I_get_here(NPC, player)
	finished_who_are_you = true
	if finished_how_did_I_get_here == false then
		FaceTarget(NPC, player)
		Dialog.New(NPC, player)
		Dialog.AddDialog("Me hearties pulled ya' from the sea, you an those other bilge rats. Do ya' remember?")
		Dialog.AddVoiceover("voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_004.mp3", 29296168, 2709023783)
		Dialog.AddOption("Vaguely. Where are we headed?", "where_are_we_headed")
		Dialog.Start()
	end
end

function where_are_we_headed(NPC, player)
	finished_how_did_I_get_here = true
	if finished_where_are_we_headed == false then
		FaceTarget(NPC, player)
		PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02_fvo_005.mp3", "We are heading to the Island of Refuge.", "", 1602680439, 2810422278)
		AddTimer(NPC, 500, "shake_camera_medium", 1, player)
		AddTimer(NPC, 1500, "shake_camera_low", 1, player)
		AddTimer(NPC, 2500, "shake_camera_low", 1, player)	
		AddTimer(NPC, 3000, "high_winds_1", 1, player)
	end
end

function shake_camera_low(NPC, player)
	PerformCameraShake(player, 0.10000000149011612)
end

function shake_camera_medium(NPC, player)
	PerformCameraShake(player, 0.20000000298023224)	
end

function shake_camera_high(NPC, player)
	PerformCameraShake(player, 0.699999988079071)
end

function high_winds_1(NPC, player)	
	finished_where_are_we_headed = true
	if finished_high_winds_1 == false then
		FaceTarget(NPC, GetSpawn(NPC, 270001))
		PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02_fvo_006.mp3", "Ingrid! Quit gawking at the shorty and fix that yard-arm!", "", 2753489262, 3183736171)
		SendStateCommand(GetSpawn(NPC, 270001), 0)
		AddTimer(NPC, 3500, "high_winds_2", 1, player)
	end
end

function high_winds_2(NPC, player)
	finished_high_winds_1 = true
	if finished_high_winds_2 == false then
		PlayFlavor(GetSpawn(NPC, 270001), "voiceover/english/ingrid/boat_06p_tutorial02/020_deckhand_ingrid_010_1637e047.mp3", "Aye, aye, Captain!", "", 1250282628, 237171958)
		SendStateCommand(GetSpawn(NPC, 270001), 520)
		AddTimer(NPC, 2500, "high_winds_3", 1, player)
	end
end

function high_winds_3(NPC, player)
	finished_high_winds_2 = true
	if finished_high_winds_3 == false then
		PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02_fvo_007.mp3", "Don't want the ship to come apart in these high winds, do ya'?!", "", 517097409, 4194681002)
		SendStateCommand(GetSpawn(NPC, 270001), 0)
		AddTimer(NPC, 5000, "high_winds_4", 1, player)
	end
end

function high_winds_4(NPC, player)
	finished_high_winds_3 = true
	FaceTarget(NPC, player)
	PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02_fvo_008.mp3", "Ya think she'd never seen a gnome afore.", "", 2447879193, 4289147535)
	SendStateCommand(GetSpawn(NPC, 270001), 630)
	AddTimer(NPC, 500, "shake_camera_medium", 1, player)
	AddTimer(NPC, 3500, "shake_camera_high", 1, player)
	AddTimer(NPC, 5500, "shake_camera_medium", 1, player)
	AddTimer(NPC, 9500, "shake_camera_low", 1, player)	
	AddTimer(NPC, 5000, "offer_quest", 1, player)
end

function offer_quest(NPC, player)
	if HasQuest(player, 524) == false then
		OfferQuest(NPC, player, 524, true)
		AddTimer(NPC, 7000, "Accepted_Tutorial_Instructions", 1, player)	
	end
end

function Accepted_Tutorial_Instructions(NPC, player)
	InstructionWindowClose(player)
	ShowWindow(player, "Journals.JournalsQuest", 0)
	InstructionWindow(player, -1.0, "The Captain has given you a quest. Left click on the quest journal button to open your quest journal.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_007_59f6d83b.mp3", 1470829818, 519016852, "tutorial_stage_9", "Open your quest journal. (click on the journal button)", "open JournalsQuest")
	ShowWindow(player, "MainHUD.StartMenu", 1)
	FlashWindow(player, "MainHUD.StartMenu.quest_journal", 20.0)
	SetTutorialStep(player, 8)
end

function respawn(NPC)

end

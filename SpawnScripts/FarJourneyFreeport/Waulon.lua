--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/Waulon.lua
    Script Author  : Cynnar
    Script Date    : 2019.09.28 03:09:55
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)

end

function hailed(NPC, player)
    FaceTarget(NPC, player)
	if HasQuest(player, 524) == false or HasCompletedQuest(player, 524) == true then	
		PlayFlavor(NPC, "voiceover/english/waulon/boat_06p_tutorial02/walon_0_008.mp3", "What? Can't ye see? Busy, away with ye!", "", 1608066875, 70639594)
	else
		step = GetQuestStep(player, 524) 
		if step == 1 then			
			InstructionWindowGoal(player,0)	
			InstructionWindowClose(player)
			Dialog.New(NPC, player)
			Dialog.AddDialog("Wot? Oh, hey there, ye' startled me.")
			Dialog.AddVoiceover("voiceover/english/waulon/boat_06p_tutorial02/walon_0_001.mp3", 814960513, 2301562586)
			Dialog.AddOption("Sorry about that.", "startled_me")
			Dialog.Start()	
		elseif step == 3 then
			PlayFlavor(NPC, "voiceover/english/waulon/boat_06p_tutorial02/walon_0_004.mp3", "Where's me hat? Needs me lucky hat!", "", 2688932325, 103225044)
			Dialog.New(NPC, player)
			Dialog.AddDialog("Ah, me hat! Was worried. See, dis' hat gives me the luck.")
			Dialog.AddVoiceover("voiceover/english/waulon/boat_06p_tutorial02/walon_0_005.mp3", 4097259098, 893296183)
			Dialog.AddOption("Glad to help!", "returned_hat")
			Dialog.Start()
			InstructionWindowGoal(player, 0)
		end
	end	
end

function returned_hat(NPC, player)
	Dialog.New(NPC, player)
	Dialog.AddDialog("Now me is safe, thanks ta' ye. Here, take this charm. Ya' may find a use for it.")
	Dialog.AddVoiceover("voiceover/english/waulon/boat_06p_tutorial02/walon_0_006.mp3", 316186630, 2628530085)
	Dialog.AddOption("Thanks, Waulon.", "received_charm")
	Dialog.Start()
end

function returned_hat(NPC, player)
	Dialog.New(NPC, player)
	Dialog.AddDialog("Well now, Ingrid o'er there, can show ya' the rest of the ship. Me needs ta' plot the course ta' the isles now.")
	Dialog.AddVoiceover("voiceover/english/waulon/boat_06p_tutorial02/walon_0_007.mp3", 1973137904, 2648127610)
	Dialog.AddOption("Ok.", "finished_step_three")
	Dialog.Start()
end

function finished_step_three(NPC, player)
	SetStepComplete(player, 524, 3) 
end

function startled_me(NPC, player)
	Dialog.New(NPC, player)
	Dialog.AddDialog("Can't seem ta' find me hat.")
	Dialog.AddVoiceover("voiceover/english/waulon/boat_06p_tutorial02/walon_0_002.mp3", 1759807851, 3940656870)
	Dialog.AddOption("Do you need some help?", "help_find_hat")
	Dialog.Start()
end

function help_find_hat(NPC, player)
	chest = GetRandomSpawnByID(NPC, 270010)
	FaceTarget(NPC, chest)
	Dialog.New(NPC, player)	
	Dialog.AddDialog("Sure! Me needs ya' ta' go lookie in them there boxes and if ye' find it, lets me know.")
	Dialog.AddVoiceover("voiceover/english/waulon/boat_06p_tutorial02/walon_0_003.mp3", 2072797774, 185252141)
	Dialog.AddOption("Ok.", "finished_step_one")
	Dialog.Start()	
end

function finished_step_one(NPC, player)
	InstructionWindowGoal(player, 0)	
	InstructionWindowClose(player)
	SetStepComplete(player, 524, 1) 	
end 

function respawn(NPC)

end


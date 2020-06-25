--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/Waulon.lua
    Script Author  : Cynnar
    Script Date    : 2019.09.28 03:09:55
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/waulon/boat_06p_tutorial02/walon_0_008.mp3", "What? Can't ye see? Busy, away with ye!", "", 1608066875, 70639594)
end

function respawn(NPC)

end

--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/Waulon.lua
    Script Author  : Cynnar
    Script Date    : 2019.09.28 03:09:55
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

local TaskAboardTheFarJourney = 524

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	
	if not HasCompletedQuest(Spawn, TaskAboardTheFarJourney) then
		if not HasQuest(Spawn, TaskAboardTheFarJourney) then
			PlayFlavor(NPC, "voiceover/english/waulon/boat_06p_tutorial02/walon_0_008.mp3", "What? Can't ye see? Busy, away with ye!", "", 1608066875, 70639594)
		elseif GetQuestStep(Spawn, TaskAboardTheFarJourney) == 1 then
			Dialog.New(NPC, Spawn)
			Dialog.AddDialog("Wot? Oh, hey there, ye' startled me.")
			Dialog.AddVoiceover("voiceover/english/waulon/boat_06p_tutorial02/walon_0_001.mp3", 814960513, 2301562586)
			Dialog.AddEmote("confused")
			Dialog.AddOption("Sorry about that.", "dlg_1")
			Dialog.Start()
		elseif GetQuestStep(Spawn, TaskAboardTheFarJourney) == 2 then
			PlayFlavor(NPC, "voiceover/english/waulon/boat_06p_tutorial02/walon_0_004.mp3", "Where's me hat? Needs me lucky hat!", "confused", 2688932325, 103225044)
		end
	end
end

function dlg_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Can't seem ta' find me hat.")
	Dialog.AddVoiceover("voiceover/english/waulon/boat_06p_tutorial02/walon_0_002.mp3", 1759807851, 3940656870)
	Dialog.AddEmote("confused")
	Dialog.AddOption("Do you need some help?", "dlg_2")
	Dialog.Start()
	
end

function dlg_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	--Gives 150 EXP when you reach this part of the conversation
	--Currently added to the final exp of the quest
	
	SetHeading(NPC, 181.20)
	SetStepComplete(Spawn, TaskAboardTheFarJourney, 1)
	
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Sure! Me needs ya' ta' go lookie in them there boxes and if ye' find it, lets me know.")
	Dialog.AddVoiceover("voiceover/english/waulon/boat_06p_tutorial02/walon_0_003.mp3", 2072797774, 185252141)
	Dialog.AddEmote("point")
	Dialog.AddOption("Okay.", "dlg_3")
	Dialog.Start()
	
end

function respawn(NPC)

end


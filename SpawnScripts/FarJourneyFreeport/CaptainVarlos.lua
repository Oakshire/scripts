--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/CaptainVarlos.lua
    Script Author  : Cynnar
    Script Date    : 2019.09.28 03:09:56
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

local TaskAboardTheFarJourney = 524

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	
	if not HasQuest(Spawn, TaskAboardTheFarJourney) and not HasCompletedQuest(Spawn, TaskAboardTheFarJourney) then
		Dialog.New(NPC, Spawn)
		Dialog.AddDialog("Ahoy! 'Tis good to see you awake. Ya seem a little squiffy, least ya' cheated death!")
		Dialog.AddVoiceover("voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_001.mp3", 1930075150, 2666442405)
		Dialog.AddEmote("salute")
		Dialog.AddOption("Where am I?", "dlg_1")
		Dialog.Start()
	elseif not HasCompletedQuest(Spawn, TaskAboardTheFarJourney) then
		PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02_fvo_010.mp3", "Back ye up a few paces. I be needin' this room.", "", 2009097517, 3594231199, Spawn)
	else
		Say(NPC, "The End of the if/else statement")
	end
end

function dlg_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Me apologies.")
	Dialog.AddVoiceover("voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_002.mp3", 2054400186, 1976167819)
	Dialog.AddEmote("bow")
	Dialog.AddOption("Who are you?", "dlg_2")
    Dialog.Start()
end

function dlg_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I am Captain Draik Varlos, and this 'ere fine ship is the Far Journey.")
	Dialog.AddVoiceover("voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_003.mp3", 2565389482, 560555759)
	Dialog.AddOption("How did I get here?", "dlg_3")
    Dialog.Start()
end

function dlg_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Me hearties pulled ya' from the sea, you an those other bilge rats. Do ya' remember?")
	Dialog.AddVoiceover("voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_004.mp3", 29296168, 2709023783)
	Dialog.AddOption("Vaguely. Where are we headed?", "dlg_4")
    Dialog.Start()
end

function dlg_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	local Ingrid = GetSpawn(NPC, 270001)
	
	if GetTempVariable(Ingrid, "MoveToCaptain") == nil then
		SetTempVariable(Ingrid, "MoveToCaptain", "on")
	end
	
	PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02_fvo_005.mp3", "We are heading to the Island of Refuge.", "", 1602680439, 2810422278, Spawn)
	
	AddTimer(NPC, 2800, "ShakeCamera_1", 1, Spawn)
end

function ShakeCamera_1(NPC, Spawn)
	PerformCameraShake(Spawn, 52429, 15948)
	AddTimer(NPC, 400, "ShakeCamera_2", 1, Spawn)
end

function ShakeCamera_2(NPC, Spawn)
	PerformCameraShake(Spawn, 52429, 15948)
	AddTimer(NPC, 400, "ShakeCamera_3", 1, Spawn)
end

function ShakeCamera_3(NPC, Spawn)
	
	PerformCameraShake(Spawn, 52429, 15948)
	
	local Ingrid = GetSpawn(NPC, 270001)
	
	if GetTempVariable(Ingrid, "MoveToCaptain") ~= nil then
		AddTimer(NPC, 800, "CallIngrid", 1, Spawn)
		SetTempVariable(Ingrid, "MoveToCaptain", nil)
	end
	
	
	
end

-- calls Ingrid after camera shake
function CallIngrid(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02_fvo_006.mp3", "Ingird! Quit gawking at the shorty and fix that yard-arm!", "sniff", 2753489262, 3183736171, Spawn)
	
	local Geredo = GetSpawn(NPC, 270004)
	local Ingrid = GetSpawn(NPC, 270001)
	
	if GetTempVariable(Ingrid, "TempAnimationVar") ~= nil then
		SetTempVariable(Ingrid, "TempAnimationVar", nil)
	end
	
	FaceTarget(NPC, Ingrid)
	
	AddTimer(Ingrid, 500, "CaptainCallingIngrid", 1, Spawn)
	AddTimer(Geredo, 500, "CaptainCallingIngrid", 1, Spawn)
	
end

--points at Ingrid
--sends back to Ingrid
function TalkToCaptainVarlos(NPC, Spawn)
	
	local Ingrid = GetSpawn(NPC, 270001)
	
	FaceTarget(NPC, Ingrid)
	
	PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02_fvo_007.mp3", "Don't want the ship to come apart in these high winds, do ya'?!", "scold", 517097409, 4194681002, Spawn)
	
	AddTimer(Ingrid, 4000, "SaluteCaptainVarlos", 1, Spawn)
	
	
end

function IngridLeaveCaptain(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02_fvo_008.mp3", "Ya think she'd never seen a gnome afore.", "", 2447879193, 4289147535, Spawn)

	AddTimer(NPC, 5100, "Delay_QuestOffer", 1, Spawn)
	
	AddTimer(NPC, 4000, "ShakeCamera_1", 1, Spawn)
	
	
end

function Delay_QuestOffer(NPC, Spawn)
	OfferQuest(NPC, Spawn, TaskAboardTheFarJourney)
end

function callDrake(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local drake = GetSpawn(NPC, 270013)
    if drake ~= nil then
        AddTimer(drake, 5000, "startanimation")
	Say(NPC, "Drake should be flying")
		
	AddTimer(drake, 31000, "stopanimation")
	Say(NPC, "Drake should be gone now")
    end
end


--[[
function callDrake(NPC, Spawn)
    FaceTarget(NPC, Spawn)
Say(NPC,"I have made it past FaceTarget")
    local drake = GetSpawn(Spawn, 270013)
Say(NPC, "I have set the local drake to the spawn id")
Say(NPC, "Test " .. drake)
    SpawnSet(drake, "visual_state", 10783)

end
]]--

function respawn(NPC)

end


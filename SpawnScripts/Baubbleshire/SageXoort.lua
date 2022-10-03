--[[
	Script Name	: SpawnScripts/Baubbleshire/SageXoort.lua
	Script Purpose	: Sage Xoort 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Updated: Dorbin 2021.01.08
	Script Notes	: Updated using Dialog Module 2022.08.20 Dorbin
--]]

require "SpawnScripts/Generic/DialogModule"


 local EMBERS_FOR_XOOT = 333 -- was 57


function spawn(NPC)
	ProvidesQuest(NPC, EMBERS_FOR_XOOT)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end


function respawn(NPC)
	spawn(NPC)
end

	function InRange(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
		   	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
        	FaceTarget(NPC, Spawn)
            else		   
	    	if math.random(1, 100) <= 80 then
            if not HasCompletedQuest(Spawn, EMBERS_FOR_XOOT) then
            PlayFlavor(NPC, "voiceover/english/sage_xoort/qey_village06/100_sage_xoort_xoort_first_4b109355.mp3", "Oh to Drunder with this! How will I ever be able to get this thing working?", "frustrated", 3733527937, 3267359953, Spawn)
     	    else	   	
		   	PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
            end
    end
end
end

 function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
		   	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
        	FaceTarget(NPC, Spawn)
            else	
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello there!  How can I be of service?")
	Dialog.AddVoiceover("voiceover/english/sage_xoort/qey_village06/sagexoort000.mp3", 202647880, 3563931951)
		   	PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
	if not HasQuest(Spawn, EMBERS_FOR_XOOT) and not HasCompletedQuest(Spawn, EMBERS_FOR_XOOT) and GetLevel(Spawn) >= 6 then
		Dialog.AddOption("I was just looking at what you were writing there.", "LookingAtWriting")
	elseif HasQuest(Spawn, EMBERS_FOR_XOOT) and GetQuestStep(Spawn, EMBERS_FOR_XOOT) == 2 then
	    Dialog.AddOption("I'm actually the one that's of service here!", "ImOfService")
	end
	Dialog.AddOption("I'm just looking around, thanks.")
	Dialog.Start()
end
end

function LookingAtWriting(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Nothing much, just a schematic I'm working on.  I can't find a power source for it ... Oh, Solusek's flame! How in the name of Brell can I make this thing work?")
	Dialog.AddVoiceover("voiceover/english/sage_xoort/qey_village06/sagexoort001.mp3", 2659791211, 4166741888)
	PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
	Dialog.AddOption("What's wrong with fire as a power source?", "WhatsWrongWithFire")
	Dialog.AddOption("I don't know.  Good luck with that. ")
	Dialog.Start()
end

function WhatsWrongWithFire(NPC, Spawn) --missing Voiceover key 002
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Fire's no good. It doesn't get hot enough or burn long enough. WAIT! HAH! Oh, you're right! I need a special type of coal. You thought of it, so you can fetch it. I need still-burning embers from the forgotten guardians in the Forest Ruins.")
	Dialog.AddVoiceover("voiceover/english/sage_xoort/qey_village06/sagexoort002.mp3", 0, 0)
	PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddOption("I'll get some.", "OfferQuest1")
	Dialog.AddOption("Afraid this is too much excitement for me!  Goodbye!")
	Dialog.Start()
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, EMBERS_FOR_XOOT)
end

function ImOfService(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("So, you return with the coals ... I hope you didn't get burned! Let me take a look...")
	Dialog.AddVoiceover("voiceover/english/sage_xoort/qey_village06/sagexoort003.mp3", 3017924926, 3471986747)
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddOption("Here you are. ", "HereYouAre")
	Dialog.Start()
end

function HereYouAre(NPC, Spawn)
	SetStepComplete(Spawn, EMBERS_FOR_XOOT, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh yes! These shall work nicely!  Tell you what -- take this money for your work. I planned on buying a spell for creating a power source but because of your smart thinking and hard work, I need no spell!")
	Dialog.AddVoiceover("voiceover/english/sage_xoort/qey_village06/sagexoort004.mp3", 4269195696, 625587041)
	PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
	Dialog.AddOption("Thanks, it's appreciated.")
	Dialog.Start()
end



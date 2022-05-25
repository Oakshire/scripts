--[[
	Script Name	: SpawnScripts/QeynosHarbor/AshildaMacHinry.lua
	Script Purpose	: Ashilda MacHinry 
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
require "SpawnScripts/Generic/DialogModule"
local pond = 5565

function InRange(NPC,Spawn)
 if GetFactionAmount(Spawn,11) <0 then
     FactionCheckCallout(NPC,Spawn,faction)
     else
    end
end

function respawn(NPC)
	spawn(NPC)
end


function spawn(NPC)
    ProvidesQuest(NPC,pond)
    SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end


function hailed(NPC, Spawn)
 if GetFactionAmount(Spawn,11) <0 then
     FactionCheckHail(NPC,Spawn,faction)
    else
    Dialog1(NPC, Spawn)
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    Dialog.AddDialog("The fish at this pond support my family better than any other location in the city.  Would you like to join me, friend?")
	Dialog.AddVoiceover("voiceover/english/ashilda_machinry/qey_harbor/ashildamachinry000.mp3", 3427161331, 347411106)
    if not HasQuest(Spawn,pond) and not HasCompletedQuest(Spawn, pond) then
	Dialog.AddOption("Have you tried other local fishing spots?", "Dialog3")
	end
	Dialog.AddOption("I'm not looking to fish right now.  Good luck out here.")
	Dialog.Start()
end


function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "confused", 0, 0, Spawn)
    Dialog.AddDialog("Oh, I've tried just about everywhere.  I get nibbles at most fishing holes, except for Crater Pond, outside the city gates.  The big meteor that crashed in that pond poisoned and killed everything living in it's waters! Nothing grows in it's tainted waters now; not even pond scum.")
	Dialog.AddVoiceover("voiceover/english/ashilda_machinry/qey_harbor/ashildamachinry001.mp3", 4148175362, 2095028620)
	Dialog.AddOption("Interesting.  Where is Crater Pond?", "Quest")
	Dialog.AddOption("Wow, that sounds dreadful.  Good luck out here!")
	Dialog.Start()
end

function Quest(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "scold", 0, 0, Spawn)
    Dialog.AddDialog("The pond isn't far from the city gates.  Hang a right as you enter the plains of Antonica.  Use caution if you visit the poison pond.  And certainly, do not drink the water.")
	Dialog.AddVoiceover("voiceover/english/ashilda_machinry/qey_harbor/ashildamachinry002.mp3", 333777381, 1162531133)
	Dialog.AddOption("Don't drink the water.  Got it.  I think I'll venture that way just to see the meteor.", "QuestStart")
	Dialog.AddOption("Hmm.  Now I know what to avoid.  Good day.")
	Dialog.Start()
end

function QuestStart(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,pond)
    end


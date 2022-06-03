--[[
	Script Name		: SpawnScripts/NorthQeynos/HaroldDunstan.lua
	Script Purpose	: Harold Dunstan
	Script Author	: Dorbin
	Script Date		: 2022.04.22
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"
Cake = 5580

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
 if GetFactionAmount(Spawn,11) <0 then
    choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 1584866727, 581589457, Spawn)
        end
    else
Dialog1(NPC, Spawn)    
SetTarget(NPC,Spawn)
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hail traveler.  Can I offer you a drink to quench your thirst?")
	Dialog.AddVoiceover("voiceover/english/harold_dunstan/qey_north/harolddunstan000.mp3", 1944438004, 3707588738)
	if GetQuestStep(Spawn,Cake)==1 then
	Dialog.AddOption("I've actually got a bundle of baked goods from Tibby Copperpot for you.","Delivered")
	end
	Dialog.AddOption("Sure.  I'll take a look at what you have.")
	Dialog.AddOption("I am not very thirsty right now. ")
	Dialog.Start()
end

function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Splended!  These pastries are just the ticket!  These tasty treats will go nicely with all my brews.  Thank you for this kind deed.")
 	Dialog.AddVoiceover("voiceover/english/harold_dunstan/qey_north/harolddunstan001.mp3", 3012893406, 2195271549)
    PlayFlavor(NPC,"","","smile",0,0,Spawn)
	Dialog.AddOption("It was no problem","JobDone")
	Dialog.Start()
end

function JobDone(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,Cake, 1)
    end


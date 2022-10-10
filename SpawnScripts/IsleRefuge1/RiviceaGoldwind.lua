--[[
    Script Name    : SpawnScripts/IsleRefuge1/RiviceaGoldwind.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 06:09:40
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, hi. Don't mind me, I'm just looking around for interesting items to add to my collection.")
    choice = MakeRandomInt(1,3)
    if choice == 1 then
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1011.mp3", 0, 0)
    elseif choice ==2 then
    Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1011.mp3", 0, 0)
    elseif choice ==3 then
    Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1011.mp3", 0, 0)
    end    
    PlayFlavor(NPC, "", "", "hello", 0,0, Spawn)
    if HasCollectionsToHandIn(Spawn) then
    Dialog.AddOption("I have a collection for you.", "TurnIn")
    end
    Dialog.AddOption("What kind of collections?","Collections")
	Dialog.AddOption("Good bye.")
	Dialog.Start()
end

function respawn(NPC)
	spawn(NPC)
end

function Collections(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "nod", 0,0, Spawn)
	Dialog.AddDialog("Why, any sort of collection. There's so much out there to find! Just open your eyes and peek under the rocks.  If you find anything interesting, let me have a look. Collecting is the only way I seem to relive my youth!")
	Dialog.AddOption("I'll keep that in mind.")
	Dialog.Start()
end


function TurnIn(NPC,Spawn)
	HandInCollections(Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "thanks", 0,0, Spawn)
	Dialog.AddDialog("Thank you so much! This will make a fantastic addition to my collections!  Please take this for helping me.")
	Dialog.AddOption("Okay, bye!")
	Dialog.Start()
end

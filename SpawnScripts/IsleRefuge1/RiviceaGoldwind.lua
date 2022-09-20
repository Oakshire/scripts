--[[
    Script Name    : SpawnScripts/IsleRefuge1/RiviceaGoldwind.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 06:09:40
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 25, "InRange")
end

function InRange(NPC, Spawn)
 if HasCollectionsToHandIn(Spawn) then
  SpawnSet(NPC, "visual_state", 6674 )   
  end
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
	Dialog.AddDialog("The reason I trade is to collect more shinies.  I can find some in the ground here, but travelers bring some of the most wonderful things!")
	Dialog.AddOption("Interesting.  Thank you for sharing!")
	Dialog.Start()
end
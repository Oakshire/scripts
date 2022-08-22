--[[
	Script Name	: SpawnScripts/Baubbleshire/YolaSindlefop.lua
	Script Purpose	: Yola Sindlefop 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"

local YolaPicnic = 5442

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"","","glare",0,0,Spawn)
else
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello there!  Isn't this a lovely spot?  It's not the vale, but I was too young to really remember much when we left anyway.")
	Dialog.AddVoiceover("voiceover/english/yola_sindlefop/qey_village06/yolasindlefop000.mp3", 2042293032, 669099653)

	Dialog.AddOption("Here is your food order!", "HandOver")
	Dialog.AddOptionRequirement(REQ_QUEST_ON_STEP, YolaPicnic , 1)
	
	Dialog.AddOption("Sorry to hear that.")
	Dialog.Start()
end
end

function HandOver(NPC, Spawn)
    SetStepComplete(Spawn, YolaPicnic, 1)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, I'm so glad he didn't forget!  That Bregun! He's always doing the right thing at the right time! And thank you for delivering it! I'm starving!")
	Dialog.AddVoiceover("voiceover/english/yola_sindlefop/qey_village06/yolasindlefop001.mp3", 3230142409, 154316341)
	PlayFlavor(NPC, "", "", "thank", 0, 0, Spawn)
	Dialog.AddOption("Enjoy.")
	Dialog.Start()
end


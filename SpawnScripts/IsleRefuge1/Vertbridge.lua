--[[
    Script Name    : SpawnScripts/IsleRefuge1/Vertbridge.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.03 08:09:10
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ah, so you've found my little bank.  If you are tired of carrying around any possessions, please feel free to deposit them into your account.")
	Dialog.AddVoiceover("voiceover/english/banker_vertbridge/tutorial_island02/bankervertbridge001.mp3", 677968905, 2264651259)
	PlayFlavor(NPC, "", "", "hello", 0,0, Spawn)
	Dialog.AddOption("Thank you.")
	Dialog.Start()
end

function respawn(NPC)
	spawn(NPC)
end
--[[
	Script Name	: SpawnScripts/Baubbleshire/Drizzcopper.lua
	Script Purpose	: Drizzcopper <Banker>
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11) <0 then
	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
else
Dialog1(NPC, Spawn)
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The answer to your question is no. I'm afraid we don't extend lines of credit at this time.")
	Dialog.AddVoiceover("voiceover/english/banker_drizzcopper/qey_village06/banker_drizzcopper001.mp3", 2748969711, 2912964073)
	Dialog.AddOption("Oh.  Thank you anyway.")
	Dialog.Start()
end

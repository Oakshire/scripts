--[[
	Script Name		: SpawnScripts/StonestairByway/StreetWitchAzreana.lua
	Script Purpose	: Street Witch Azreana
	Script Author	: torsten
	Script Date		: 2022.07.18
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local OgreWatch = 5676

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetQuestStep(Spawn, OgreWatch) == 1 then
        SetStepComplete(Spawn, OgreWatch, 1)
    end
    
    Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hmmm ... yes ... this is interesting ... interesting indeed...")
	Dialog.AddVoiceover("voiceover/english/streetwitch/fprt_hood02/street_witch_azreana.mp3", 3291813723, 1080848971)
	Dialog.AddOption("Uhh... sure.")
	Dialog.Start()
end


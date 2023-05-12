--[[
	Script Name		:	Duffy.lua
	Script Purpose	:	Duffy
	Script Author	:	Dorbin
	Script Date		:	05/11/2023
	Script Notes	:	
--]]

require "SpawnScripts/Generic/DialogModule"
local Sayer = 5812

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("Take a look around. Never have you seen such finely crafted or wondrous artifacts for sale ... for such little coin!")
	Dialog.AddVoiceover("voiceover/english/merchant_duffy/antonica/merchantduffy000.mp3", 2930671172, 614117388)
    PlayFlavor(NPC,"","","orate",0,0,Spawn)
    if  GetQuestStep(Spawn, Sayer) == 1 then 
	Dialog.AddOption("Delivery from Sayer's Outfitters. ", "Dialog1")
	end
	Dialog.AddOption("I'll just look about. ")
	Dialog.Start()
end

function Dialog1(NPC, Spawn)
    SetStepComplete(Spawn, Sayer, 1)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("'Bout time my salted lizards made it from the Steppes. I thought for sure old Sayer would forget me.  ")
	Dialog.AddVoiceover("voiceover/english/merchant_duffy/antonica/merchantduffy001.mp3", 3538554208, 285621501)
    PlayFlavor(NPC,"","","thanks",0,0,Spawn)
	Dialog.AddOption("Farewell. ")
	Dialog.Start()
end
--[[
	Script Name		: SpawnScripts/NorthQeynos/MedicRowena.lua
	Script Purpose	: Medic Rowena
	Script Author	: Dorbin
	Script Date		: 2022.04.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"
local Delivery = 5542

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
	FaceTarget(NPC, Spawn)
    choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 1584866727, 581589457, Spawn)
        end
    else
Dialog1(NPC, Spawn)
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("Rodcet's blessings upon you. How may the Temple of Life assist you today?")
	Dialog.AddVoiceover("voiceover/english/medic_rowena/qey_north/medicrowena000.mp3", 59000523, 1158708704)
    if GetQuestStep(Spawn,Delivery)==1 then
	Dialog.AddOption("I have a delivery for you from The Jewel Box.","Delivered")
    end
    Dialog.AddOption("Nothing at the moment.")
	Dialog.Start()
end



function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "boggle", 0, 0, Spawn)
	Dialog.AddDialog("We were not expecting this package so soon!  High Preistess Kassandra will be most pleased!  We can use these silver etchings in channeling the Prime Healer's power.  Please accept our thanks for their early delivery.")
	Dialog.AddVoiceover("voiceover/english/medic_rowena/qey_north/medicrowena001.mp3", 3448930744, 2802964919)
	Dialog.AddOption("Glad I could be of assistance.","FinishQuest")
	Dialog.Start()
end

function FinishQuest(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,Delivery, 1)
	PlayFlavor(NPC, "", "", "bow", 0, 0, Spawn)
    end
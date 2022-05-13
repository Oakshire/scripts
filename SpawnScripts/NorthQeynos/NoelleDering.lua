--[[
	Script Name		: SpawnScripts/NorthQeynos/NoelleDering.lua
	Script Purpose	: Noelle Dering
	Script Author	: Dorbin
	Script Date		: 2022.04.22
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
local Sword = 5544

require "SpawnScripts/Generic/DialogModule"

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
		PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
        end
      else  
        Dialog1(NPC, Spawn)    
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "bow", 0, 0, Spawn)
    Dialog.AddDialog("Greetings! I welcome you to Irontoes East! Please speak with Harold or Gretta if you need help!")
	Dialog.AddVoiceover("voiceover/english/noelle_dering/qey_north/noelledering.mp3", 2170111717, 1186191258)
    if GetQuestStep(Spawn,Sword)==1 then
	Dialog.AddOption("I have your 'gift' for you from Walter Channing.  He said your husband needs to check the if the balance needs to be adjusted.","Delivered")
    end
	Dialog.AddOption("Thanks, I'll keep that in mind")
	Dialog.Start()
end

function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
    Dialog.AddDialog("Praise the gods!  You've come just in time.  Oh, I must not be too loud or Nicola will suspect something!  If you wouldn't mind, would you mind slipping out the back door so he doesn't see you leave?")
	Dialog.AddVoiceover("voiceover/english/noelle_dering/qey_north/noelledering000.mp3", 2834883607, 1827900597)
	Dialog.AddOption("I'll be discrete.","Update")
	Dialog.Start()
end

function Update(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,Sword, 1)
    end
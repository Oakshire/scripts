--[[
	Script Name	: SpawnScripts/Nettleville/NiaJaja.lua
	Script Purpose	: Nia Jaja 
	Script Author	: Dorbin
	Script Date	: 06.25.2022
	Script Notes	: Has Kerran Language check
--]]

require "SpawnScripts/Generic/DialogModule"
dofile("SpawnScripts/Generic/UnknownLanguage.lua")

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
    ProvidesQuest(NPC,5598)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC,Spawn)
if not HasQuest(Spawn, 5598) and not HasCompletedQuest(Spawn,5598)then
if math.random(1,100)<=85 then
    if not HasLanguage(Spawn,13)then
	FaceTarget(NPC, Spawn)
    Garbled(NPC,Spawn)
else
    PlayFlavor(NPC, "voiceover/english/nia_jaja/qey_village01/qey_village01_nia_jaja_callout1_87e08206.mp3", "... and then she has the gall to say my coat rrreminders her of a common hyena!  I can't stand that woman!  I can't face her again!  Oh, I need someone to help me.", "", 1998825354, 2680772618, Spawn,13)
    
    end
    end
end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
else    
if  HasCompletedQuest(Spawn,5598)then
    PlayFlavor(NPC, "voiceover/english/nia_jaja/qey_village01/qey_village01_nia_jaja_multhail1_ab7bd6d4.mp3", "I simply can't face her! Can't you see I'm angry; I've no time to chat with you!", "", 1436884292, 4259898399, Spawn,13)
else
    if not HasLanguage(Spawn,13)then
    Garbled(NPC,Spawn)
    PlayFlavor(NPC,"","","noway",0,0,Spawn)
    else
 	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddDialog("... and then she has the gall to say my coat rrremindered her of a common hyena!")
	Dialog.AddVoiceover("voiceover/english/nia_jaja/qey_village01/niajaja000.mp3", 2194298502, 3471338727)
	Dialog.AddLanguage(13)
 	if not HasCompletedQuest (Spawn, 5598) and not HasQuest (Spawn, 5598) then 
    Dialog.AddOption("Excuse me, but who said that?", "Helping")
    end
    if GetQuestStep (Spawn, 5598)==2 then 
        Dialog.AddOption("Marjani is still hanging around the scribe shop.","Delivered")
    end
    Dialog.AddOption("Sorry, I'm just passing through.")
	Dialog.Start()
   
    
    end
end
end
end

function Helping(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "frustrated", 0, 0, Spawn)
	Dialog.AddDialog("Oh, it was that minx Marrrjani Kenan! First she insults my knowledge of magic and then my gorgeous coat!  Would you help me?  I need to know if Marjani is still in the scrrribe shop.  I don't want to return to work until that SHREW is gone!")
	Dialog.AddVoiceover("voiceover/english/nia_jaja/qey_village01/niajaja001.mp3", 3841131398, 2599787330)
	Dialog.AddLanguage(13)
	Dialog.AddOption("I can go check for you.", "QuestBegin")
	Dialog.AddOption("That is unfortunate.  Sorry, but I'm busy.")
	Dialog.Start()
end

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, 5598)
end

function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "stare", 0, 0, Spawn)
	Dialog.AddDialog("She was still there?!  I guess I won't be going back today.  I want to claw- her- eyes- out!")
	Dialog.AddVoiceover("voiceover/english/nia_jaja/qey_village01/niajaja003.mp3", 473886489, 3909124821)
	Dialog.AddLanguage(13)
	Dialog.AddOption("Sorry to be the barer of bad news!", "QuestDone")
	Dialog.AddOption("...I'll just be... over there...", "QuestDone")
	Dialog.Start()
end

function QuestDone(NPC, Spawn)
    SetStepComplete(Spawn, 5598, 2)
end

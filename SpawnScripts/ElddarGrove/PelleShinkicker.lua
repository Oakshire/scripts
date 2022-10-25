--[[
	Script Name	: SpawnScripts/ElddarGrove/PelleShinkicker.lua
	Script Purpose	: Pelle Shinkicker 
	Script Author	: Dorbin
	Script Date	: 5.2.2022
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"

local BookDelivery = 5514

function spawn(NPC)
ProvidesQuest(NPC,BookDelivery)    
SetPlayerProximityFunction(NPC, 9, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
        if not HasCompletedQuest (Spawn, 5514) and not HasQuest (Spawn, 5514) then 
	    	if math.random(1, 100) <= 80 then
               PlayFlavor(NPC, "voiceover/english/pelle_shinkicker/qey_elddar/100_quest_pelle_shinkicker_hail_f015f9a0.mp3", "Shoo shoo!  I am much too busy to speak with you now.", "frustrated", 1998455291, 633133163, Spawn)
            end
        end    
end


function hailed(NPC, Spawn)
if GetFactionAmount(Spawn, 11) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
 	FaceTarget(NPC, Spawn)
   else
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, what is it now?  Bristlebane's no doubt playing tricks on me again, causing all this interruption!  Is there something meaningful I can help you with, or are you just going to gawk?")
	Dialog.AddVoiceover("voiceover/english/pelle_shinkicker/qey_elddar/pelleshinkicker000.mp3", 4147340962, 3983315910)
    if not HasQuest(Spawn,BookDelivery) and not HasCompletedQuest(Spawn, BookDelivery) then
	Dialog.AddOption("You seem busy.  Need any help?", "Option1")
	end
    if GetQuestStep(Spawn,BookDelivery)==3 then
	Dialog.AddOption("I've delivered your book.", "Delivered")
	end	
	if HasCompletedQuest(Spawn,BookDelivery) then
	Dialog.AddOption("You MUST be busy! I've helped you already once before. Take care.")
	end    
	Dialog.AddOption("Oh, sorry.  I'll leave you alone.")
	Dialog.Start()
    end
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I could in fact!  I've been slightly worried that you've come to me with another story to write, or some other such thing.  I already write my stiff fingers closer to their doom, and don't need more work to keep me away from my tavern in the Buabbleshire!")
	Dialog.AddVoiceover("voiceover/english/pelle_shinkicker/qey_elddar/pelleshinkicker001.mp3",2510348441, 2397724897)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)	
	Dialog.AddOption("On with it.  What do you need?", "Option2")
	Dialog.AddOption("Sounds like you should have stayed at the tavern. Farewell.")
	Dialog.Start()
	end	

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Calm yourself sir!  I'll have you know I'm just as respected around here for my exploits as an adventurer as my skill with a quill, Heh!  Are you going to take my friend this book or not? I can't sit around here chatting all day about whether you'll do it or not.")
	Dialog.AddVoiceover("voiceover/english/pelle_shinkicker/qey_elddar/pelleshinkicker002.mp3", 1275889861, 2180981417)
    PlayFlavor(NPC, "", "", "scold", 0, 0, Spawn)	
	Dialog.AddOption("Sorry.  I'll deliver your book.", "StartQuest")
	Dialog.AddOption("Well now I've changed my mind. Good day.")
	Dialog.Start()
end

function StartQuest(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,BookDelivery)
    end
 
 function Delivered(NPC, Spawn)
    SetStepComplete(Spawn,BookDelivery, 3)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Splendid indeed!  How was old Rune anyway?  Getting along well I hope!  I keep inviting him over to the tavern for an ale, but he always has his head buried in a musty old book.  And not the exciting type I write either, Heh!  Well, I wish you luck on your adventures!  Perhaps this will help.  I picked it up on one of mine!")
	Dialog.AddVoiceover("voiceover/english/pelle_shinkicker/qey_elddar/pelleshinkicker004.mp3", 1303257616, 1299740157)
    PlayFlavor(NPC, "", "", "heelclick", 0, 0, Spawn)	
	Dialog.AddOption("Glad to have helped. Thanks.")
	Dialog.AddOption("To new adventures!")
	Dialog.Start()
end   
    
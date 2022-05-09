--[[
	Script Name	: SpawnScripts/ElddarGrove/PelleShinkicker.lua
	Script Purpose	: Pelle Shinkicker 
	Script Author	: Dorbin
	Script Date	: 5.2.2022
	Script Notes	: 
--]]
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
	PlayFlavor(NPC, "voiceover/english/pelle_shinkicker/qey_elddar/pelleshinkicker000.mp3", "", "", 4147340962, 3983315910, Spawn)
	local conversation = CreateConversation()
    if not HasQuest(Spawn,BookDelivery) and not HasCompletedQuest(Spawn, BookDelivery) then
	AddConversationOption(conversation, "You seem busy.  Need any help?", "Option1")
	end
    if GetQuestStep(Spawn,BookDelivery)==3 then
	AddConversationOption(conversation, "I've delivered your book.", "Delivered")
	end	
	if HasCompletedQuest(Spawn,BookDelivery) then
	AddConversationOption(conversation, "Don't worry.  I've helped you already once before. Take care.")
	end    
	AddConversationOption(conversation, "Oh, sorry.  I'll leave you alone.")
	StartConversation(conversation, NPC, Spawn, "Oh, what is it now?  Bristlebane's no doubt playing tricks on me again, causing all this interruption!  Is there something meaningful I can help you with, or are you just going to gawk?")

    end
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/pelle_shinkicker/qey_elddar/pelleshinkicker001.mp3", "", "agree", 2510348441, 2397724897, Spawn)	
    local conversation = CreateConversation()
	AddConversationOption(conversation, "On with it.  What do you need?", "Option2")
	AddConversationOption(conversation, "Sounds like you should have stayed at the tavern.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "I could in fact!  I've been slightly worried that you've come to me with another story to write, or some other such thing.  I already write my stiff fingers closer to their doom, and don't need more work to keep me away from my tavern in the Buabbleshire!  ")
end	

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/pelle_shinkicker/qey_elddar/pelleshinkicker002.mp3", "", "scold", 1275889861, 2180981417, Spawn)	
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Sorry.  I'll deliver your book.", "StartQuest")
	AddConversationOption(conversation, "I've changed my mind.  Good day.")
	StartConversation(conversation, NPC, Spawn, "Calm yourself sir!  I'll have you know I'm just as respected around here for my exploits as an adventurer as my skill with a quill, Heh!  Are you going to take my friend this book or not? I can't sit around here chatting all day about whether you'll do it or not.")
end

function StartQuest(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,BookDelivery)
    end
 
 function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/pelle_shinkicker/qey_elddar/pelleshinkicker004.mp3", "", "heelclick", 1303257616, 1299740157, Spawn)	
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Glad to have helped.  Thanks.", "FinishQuest")
	StartConversation(conversation, NPC, Spawn, "Splendid indeed!  How was old Rune anyway?  Getting along well I hope!  I keep inviting him over to the tavern for an ale, but he always has his head buried in a musty old book.  And not the exciting type I write either, Heh!  Well, I wish you luck on your adventures!  Perhaps this will help.  I picked it up on one of mine!")
end   
    
function FinishQuest(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,BookDelivery, 3)
    end
--[[
	Script Name	: SpawnScripts/NorthQeynos/ThardrinSteeleye.lua
	Script Purpose	: Thardrin Steeleye 
	Script Author	: Dorbin
	Script Date	: 2022.01.11
	Script Notes	: 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

local Delivery = 5541

function spawn(NPC)
AddTimer(NPC, 5000, "EmoteLoop")    
	SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
ProvidesQuest(NPC,Delivery)
end

function respawn(NPC)
	spawn(NPC)
end


function InRange(NPC,Spawn)
    if GetFactionAmount(Spawn,11) <0 then
    FactionCheckingCallout(NPC, Spawn, faction)
    else
end
end


function hailed(NPC, Spawn)
    FaceTarget(NPC,Spawn)
 if GetFactionAmount(Spawn,11) <0 then
    	FaceTarget(NPC, Spawn)
        choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
        end
 else   
     local conversation = CreateConversation()
        FaceTarget(NPC,Spawn)
   	    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1060.mp3", "", "glare", 0, 0, Spawn, 0)
        if not HasQuest(Spawn,Delivery) and not HasCompletedQuest(Spawn, Delivery)then
        AddConversationOption(conversation, "Pester!?  I'm just looking around!","Delivery1")
        end
        AddConversationOption(conversation, "Yeesh.  I'll just be going then.")
    	StartConversation(conversation, NPC, Spawn, "Harrumph.  Can't ye see I'm busy?  Go pester someone else!")
    end
end

function Delivery1(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "frustrated", 0, 0, Spawn)
    local conversation = CreateConversation()
    AddConversationOption(conversation, "Well, I suppose I could.  Is there something in it for me?", "Delivery2")
    AddConversationOption(conversation, "Yeesh.  I'll just be going then.")
	StartConversation(conversation, NPC, Spawn, "Just who do you think you are? You've wasted enough of my time. Why don't you make yourself useful!")
end	

function Delivery2(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,Delivery)
    end

  
function EmoteLoop(NPC)
    local emoteChoice = MakeRandomInt(1,3)

    if emoteChoice == 1 then
-- ponder
        PlayAnimation(NPC, 12030)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- sniff
        PlayAnimation(NPC, 12329)
        AddTimer(NPC, MakeRandomInt(6000,9000), "EmoteLoop")	
    else
-- tapfoot
        PlayAnimation(NPC, 13056)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    end
end
--[[
	Script Name	: SpawnScripts/Castleview/GrommlukOognee.lua
	Script Purpose	: Grommluk Oognee 
	Script Author	: Dorbin
	Script Date	: 2022.01.26
	Script Notes	: 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

local Bog = 5458

function spawn(NPC)
SetPlayerProximityFunction(NPC, 4, "InRange", "LeaveRange")
ProvidesQuest(NPC, Bog)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
        FactionChecking(NPC, Spawn, faction)
        else  	
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/grommluk_oognee/qey_village04/grommlukoognee.mp3", "", "sigh", 1671306238, 1249436621, Spawn)
	if not HasCompletedQuest (Spawn, Bog) and not HasQuest (Spawn, Bog) then 
    AddConversationOption(conversation, "What seems to be the matter?", "Matter")
    end
    if GetQuestStep (Spawn, Bog)==2 then 
    AddConversationOption(conversation, "Here is a jar of Peat Bog water for you.", "Delivery")
    end
	AddConversationOption(conversation, "Enjoy your soak. Good day.")
	StartConversation(conversation, NPC, Spawn,     "Ahhh... It feels good to get into the water and relax, but too bad this isn't a swamp, though. The water is too clean the stone doesn't squish...")
    end
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
        FactionChecking(NPC, Spawn, faction)
        else  	    
    if math.random(1, 100) <= 60 then
        if not HasCompletedQuest (Spawn, Bog) then 
            FaceTarget(NPC,Spawn)
            local choice = math.random(1,2)
                if choice == 1 then
	           PlayFlavor(NPC, "voiceover/english/grommluk_oognee/qey_village04/100_swimmer_grommluk_multhail2_b5e61808.mp3", "I profess that I am not mad, but I do thinketh this water is too clean.  And the stones!  They doth not squish under thy feet!", "crazy", 2658355916, 3677777453)
                else 
            PlayFlavor(NPC, "voiceover/english/grommluk_oognee/qey_village04/100_swimmer_grommluk_callout_893d31d6.mp3", "Aaaaahhh ... This is not how a Froglok should live. Hello, friend. What does thou need?",  "pout", 1845678991, 1668939224, Spawn)
                end
            end
        else
            if HasCompletedQuest (Spawn, Bog) then 
            local choice = math.random(1,2)
                if choice == 1 then
	           PlayFlavor(NPC, "voiceover/english/grommluk_oognee/qey_village04/100_swimmer_grommluk_multhail2_b5e61808.mp3", "I profess that I am not mad, but I do thinketh this water is too clean.  And the stones!  They doth not squish under thy feet!", "crazy", 2658355916, 3677777453)
         else 
                PlayFlavor(NPC, "", "", "dance", 0, 0)
            end
         end
    end
    end
end

function Matter(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/grommluk_oognee/qey_village04/grommlukoognee000.mp3", "", "ponder", 2855844527, 67892333, Spawn)
    AddConversationOption(conversation, "I can explore the Peat Bog.", "Sample")
    AddConversationOption(conversation, "I have no desire to wallow in the Peat Bog. Sorry.")
	StartConversation(conversation, NPC, Spawn, "Nothing like being submerged in marsh water up to thy eyeballs, and feeling the ground squish between thy toes. I hear the Peat Bog is like that. Could'st thou go there and find out for me? I would graciously pay'st thou for the job.")
end

function Sample(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/grommluk_oognee/qey_village04/grommlukoognee001.mp3", "", "thanks", 753284600, 2887327469, Spawn)
    AddConversationOption(conversation, "Alright. I'll be back.", "QuestStart")
    AddConversationOption(conversation, "On second thought, I'll pass.")
	StartConversation(conversation, NPC, Spawn, "Great! Take'st this jar and bring me some water from the middle of the Peat Bog. Make'th sure thou gets plenty of muck in there too.")
end

function QuestStart(NPC, Spawn, Quest)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Bog)
end

-- This line is fabricated and the MP3 does not work (2022.02.18 Dorbin)
function Delivery(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/grommluk_oognee/qey_village04/grommlukoognee002.mp3", "", "happy", 1671306238, 1249436621, Spawn)
    AddConversationOption(conversation, "Enjoy your bog muck!", "QuestDone")
	StartConversation(conversation, NPC, Spawn, "Ah... this is wonderful! The squish! The mouth-feel! It isn't the same as back home, but it will do! Thank you adventurer. Please take'th this as a show of my gratitude.")
end

function QuestDone(NPC, Spawn)
    SetStepComplete(Spawn,Bog , 2)
end


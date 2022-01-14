
--[[
	Script Name	: SpawnScripts/TheBaubbleshire/NylaDiggs.lua
	Script Purpose	: Nyla Diggs 
	Script Author	: Dorbin
	Script Date	: 2022.01.10
	Script Notes	: Racial language check for Callout & Quest offering
	                   Quest 'Nyla's Pie Thief' and Nyla's dialogue reconstructed from recovered Voice Overs and Prima Guide
--]]

local PieThief = 5437

function spawn(NPC)
    ProvidesQuest(NPC, PieThief)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	QuestStart(NPC,Spawn,conversation)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn) --Provides Language Based Callout with delay
    if not HasLanguage(Spawn, 8) then
        local choice = math.random(1,2)

        if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/halfling_base_1/ft/halfling/halfling_base_1_1_garbled_gf_54e55451.mp3", "garbled text not to be translated", "", 1486303618, 2371451914, Spawn, 8)
    	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfling_base_1/ft/halfling/halfling_base_1_1_garbled_gf_823f1021.mp3", "garbled text not to be translated", "", 3051197299, 2401133915, Spawn, 8)
    	end
	elseif
    not HasCompletedQuest (Spawn, PieThief) and not HasQuest (Spawn, PieThief) then 
     PlayFlavor(NPC, "", "Now where's that pie? I know I had it here.", "", 0, 0, Spawn, 8)
     AddTimer(NPC, 2000, "PlayFlavor", Spawn)
    end
end

function LeaveRange(NPC, Spawn)
end


function QuestStart(NPC, Spawn, conversation)
    if not HasQuest (Spawn, PieThief) then
    conversation = CreateConversation()
    AddConversationOption(conversation, "What happened?", "Pie1")
    StartConversation(conversation, NPC, Spawn, "Hello dear. Sorry to make such a fuss, but I am certain it was just here!")

elseif HasQuest (Spawn, PieThief) then
    conversation = CreateConversation()
        if GetQuestStep(Spawn, PieThief) == 5 then
        AddConversationOption(conversation, "Lozoria Shinkicker took your pie! He seems to have eaten it though. He offered an ale on the house at the Deepmug Tavern as repayment.", "ThiefFinished")
        end
    AddConversationOption(conversation, "I'm still looking!")
    StartConversation(conversation, NPC, Spawn, "Well, who is it? They're in for a tongue-lashing!")
    end
end


 function Pie1(NPC, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "I could look for your missing pie.", "Pie2")
  StartConversation(conversation, NPC, Spawn, "You see, the pie I baked earlier today, its missing! Not an uncommon event around here if you know what I mean. You'll always find a rummblin' belly around here, love.")
end   

function Pie2 (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, PieThief)
end


function ThiefFinished(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks, the pie smells delicous!", "PieTime")
	StartConversation(conversation, NPC, Spawn, "Oh that rascal! Here's your pie, dear. I'll take care of that rapscallion later.")
end   
        
function PieTime(NPC, Spawn)
    	SetStepComplete(Spawn, PieThief, 5)
    end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

    if not HasLanguage(Spawn, 8) then -- Language Check for Stout (8)
	local choice = math.random(1,2)
         if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/halfling_base_1/ft/halfling/halfling_base_1_1_garbled_gf_54e55451.mp3", "garbled text not to be translated", "", 1486303618, 2371451914, Spawn, 8)
	    elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfling_base_1/ft/halfling/halfling_base_1_1_garbled_gf_823f1021.mp3", "garbled text not to be translated", "", 3051197299, 2401133915, Spawn, 8)
		end
    else
        if not HasCompletedQuest(Spawn, PieThief) then 
        QuestStart(NPC, Spawn)
        else
        PlayFlavor(NPC, mp3, "Oh, why hello there dear. How are you today? Afraid I can't talk right now", "", 991095436, 863644706, Spawn)
        end
   end
 end


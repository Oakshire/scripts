
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
	elseif not HasCompletedQuest (Spawn, PieThief) and not HasQuest (Spawn, PieThief) then 
     PlayFlavor(NPC, "voiceover/english/nyla_diggs/qey_village06/100_nyla_diggs_nyla_first_d022db59.mp3", "Now where's that pie? I know I had it here.", "", 3499289366, 4159200256, Spawn, 8)
     AddTimer(NPC, 2000, "PlayFlavor", Spawn)
    end
end

function LeaveRange(NPC, Spawn)
end


function QuestStart(NPC, Spawn, conversation)
    if not HasQuest (Spawn, PieThief) then
    PlayFlavor(NPC, "voiceover/english/nyla_diggs/qey_village06/nyladiggs001.mp3", "", "", 919242821, 353275540, Spawn, 8)
     conversation = CreateConversation()
    AddConversationOption(conversation, "I could look for your missing pie.", "Pie1")
    StartConversation(conversation, NPC, Spawn, "You see, the pie I baked earlier today, its missing! Not an uncommon event around here if you know what I mean. You'll always find a rummblin' belly around here, love.")


elseif HasQuest (Spawn, PieThief) then
    conversation = CreateConversation()
        PlayFlavor(NPC, "voiceover/english/nyla_diggs/qey_village06/nyladiggs003.mp3", "", "", 1047555750, 2550790552, Spawn, 8)
        if GetQuestStep(Spawn, PieThief) == 5 then
        AddConversationOption(conversation, "Lozoria Shinkicker took your pie! He seems to have eaten it though. He offered an ale on the house at the Deepmug Tavern as repayment.", "ThiefFinished")
        end
    AddConversationOption(conversation, "I'm still looking!")
    StartConversation(conversation, NPC, Spawn, "Well, who is it? They're in for a tongue-lashing!")
    end
end


 function Pie1(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/nyla_diggs/qey_village06/nyladiggs002.mp3", "", "", 1037348617, 3974383553, Spawn, 8)
     conversation = CreateConversation()
    AddConversationOption(conversation, "I could look for your missing pie.", "Pie2")
    StartConversation(conversation, NPC, Spawn, "You'd do that? Tell you what, you search for the missing pie and when you return I'll have a fresh baked pie waiting for you. Oh, and I'll give the culprit such a scolding, he'll think twice before taking another one of my pies!")

 end   

function Pie2 (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, PieThief)
end


function ThiefFinished(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/nyla_diggs/qey_village06/nyladiggs004.mp3", "", "", 3185345641, 3927954754, Spawn, 8)

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
        PlayFlavor(NPC, "voiceover/english/nyla_diggs/qey_village06/nyladiggs000.mp3", "Oh, why hello there dear. How are you today? Afraid I can't talk right now", "", 2088434236, 3361269998, Spawn)
        end
   end
 end


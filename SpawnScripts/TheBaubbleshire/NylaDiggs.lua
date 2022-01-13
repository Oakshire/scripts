--[[
	Script Name	: SpawnScripts/TheBaubbleshire/NylaDiggs.lua
	Script Purpose	: Nyla Diggs 
	Script Author	: Dorbin
	Script Date	: 2022.01.10
	Script Notes	: Manual Racial Designation/Old Quest Building
--]]

local PieThief = 5436

function spawn(NPC)
    ProvidesQuest(NPC, PieThief)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
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

function LeaveRange(NPC, Spawn)
end

function QuestStart(NPC, Spawn)
        conversation = CreateConversation()
if HasQuest (Spawn, PieThief) then
    AddConversationOption(conversation, "I'm still looking!")
    StartConversation(conversation, NPC, Spawn, "Well, who is it? They're in for a tongue-lashing!")
else
  conversation = CreateConversation()
  AddConversationOption(conversation, "I could look for your missing pie for you.", "Pie2")
  StartConversation(conversation, NPC, Spawn, "You see, the pie I baked earlier today, its missing! Not an uncommon event around here if you know what I mean. You'll always find a rummblin' belly around here, love.")
end   
        
end

function Pie2 (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, PieThief)
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
elseif HasLanguage(Spawn, 8) then
        if not HasCompletedQuest (Spawn, PieThief) and not HasQuest (Spawn, PieThief) then 
        QuestStart(NPC, Spawn)
         else 
        PlayFlavor(NPC, mp3, "Oh, why hello there dear. How are you today? Afraid I can't talk right now", "", 991095436, 863644706, Spawn)
        end
   end
   

end
end
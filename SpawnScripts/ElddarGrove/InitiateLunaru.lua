--[[
	Script Name	: SpawnScripts/ElddarGrove/InitiateLunaru.lua
	Script Purpose	: Initiate Lunaru 
	Script Author	: Dorbin
	Script Date	: 2022.05.09
	Script Notes	: 
--]]

local Message = 5525

function spawn(NPC)
    ProvidesQuest(NPC, Message)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
 if GetFactionAmount(Spawn,11) <0 then
    PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gm_6da83eeb.mp3", "I'll defend myself if it comes to that, savage.", "shakefist", 1117657093, 2489618551, Spawn, 0)
    else
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1038.mp3", "", "bow", 0, 0, Spawn)
    if not HasQuest(Spawn,Message) and not HasCompletedQuest (Spawn,Message) then
	AddConversationOption(conversation, "You're very dedicated to training, I see.","Message1")
	end
	if HasCompletedQuest (Spawn,Message) then
	AddConversationOption(conversation, "Zwena is still serenading.  I hope hearing her is enough for now.","Listen")
	end
	AddConversationOption(conversation, "Don't let me interrupt.")
	StartConversation(conversation, NPC, Spawn, "Sorry, I can't speak now.  I must prepare for my sparring exercises.")
	
    end
end



function Message1(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "sigh", 0, 0, Spawn)
	AddConversationOption(conversation, "That wouldn't be a problem at all.","Message2")
	AddConversationOption(conversation, "Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "I am devoted to them, yes, but my heart lies with Zwena.  That is why I must train so hard... if I want any time to spend with her away from our order.  I must complete everything before I leave.  Mmmm, could you perhaps deliver her a note?")
end   

function Message2(NPC, Spawn)
OfferQuest(NPC,Spawn, Message)
FaceTarget(NPC, Spawn)
end

function Listen(NPC, Spawn)
	PlayFlavor(NPC, "", "", "listen", 0, 0, Spawn)
    AddTimer(NPC,3500,"Thanks",1,Spawn)
    end
    
function Thanks(NPC, Spawn)
	   local choice = math.random(1,2)
        if choice == 1 then
        PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
        end
end    
 
--[[
    Script Name    : SpawnScripts/ElddarGrove/HelanniFirewyng.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.10 03:05:08
    Script Purpose : 
                   : 
--]]

local Arrow = 5526

function spawn(NPC)
AddTimer(NPC, 5000, "EmoteLoop")    
   ProvidesQuest(NPC, Arrow)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
 if GetFactionAmount(Spawn,11) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
    else
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "hello", 0, 0, Spawn)
    if not HasQuest(Spawn,Arrow) and not HasCompletedQuest (Spawn,Arrow) then
	AddConversationOption(conversation, "I'm just poking around, looking for things to do.","Arrow1")
	end
	if HasCompletedQuest (Spawn,Arrow) then
	AddConversationOption(conversation, "I'm sure you and your Golden Arrow trophy could show me a thing or two.","Thanks")
	end
	AddConversationOption(conversation, "I just might go see.  Thanks.")
	StartConversation(conversation, NPC, Spawn, "Hello!  If you're interested, it looks like some archery practice is going on behind the shop.")
	
    end
end

function Arrow1(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
	AddConversationOption(conversation, "It would be my pleasure.","Arrow2")
	AddConversationOption(conversation, "I'm not heading that way. Sorry.")
	StartConversation(conversation, NPC, Spawn, "If you are seeking work, I am looking for help. My dearest friend, Leona Ward, lives in southern Qeynos. Unfortunately, we do not see each other as often as we'd like. I told Leona one day I would call myself an expert archer, and I've finally fulfilled my dream. At my last tournament, I received the highest reward in archery - The Golden Engraved Arrow. I want Leona to have my prized trophy.")
end   

function Arrow2(NPC, Spawn)
OfferQuest(NPC,Spawn, Arrow)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
end

function Thanks(NPC, Spawn)
	   local choice = math.random(1,2)
        if choice == 1 then
        PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
       end
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
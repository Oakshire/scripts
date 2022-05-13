--[[
	Script Name		: SpawnScripts/NorthQeynos/WalterChanning.lua
	Script Purpose	: Walter Channing
	Script Author	: Dorbin
	Script Date		: 2022.04.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
local Sword = 5544

function spawn(NPC)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")		
ProvidesQuest(NPC, Sword)
end

function respawn(NPC)
	spawn(NPC)
end


function InRange(NPC,Spawn)
      if GetFactionAmount(Spawn,11) <0 then
    	FaceTarget(NPC, Spawn)
        choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
        end
   else     
        if not HasCompletedQuest (Spawn, Sword) and not HasQuest (Spawn, Sword) then 
 	    if math.random(1, 100) <= 90 then
    	FaceTarget(NPC, Spawn)
	    local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/merchant_walter_channing/qey_north/100_retainer_channing_walter_g4_multhail1_95c384e8.mp3", "Are you interested in my armor? I've no time for small talk and don't need any help.", "", 39831011, 3044568057, Spawn, 0)
	    elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/merchant_walter_channing/qey_north/100_retainer_channing_walter_g4_callout1_182d9ab2.mp3", "May I interest you in seeing some of the fine armor and weapons that made the Ironforge family famous?", "", 3181523989, 773123783, Spawn, 0)
        end
        end
    else
    if math.random(1,100) <= 60 then
    	FaceTarget(NPC, Spawn)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/merchant_walter_channing/qey_north/100_retainer_channing_walter_g4_multhail1_95c384e8.mp3", "Are you interested in my armor? I've no time for small talk and don't need any help.", "", 39831011, 3044568057, Spawn, 0)
	    elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/merchant_walter_channing/qey_north/100_retainer_channing_walter_g4_callout1_182d9ab2.mp3", "May I interest you in seeing some of the fine armor and weapons that made the Ironforge family famous?", "", 3181523989, 773123783, Spawn, 0)
        end
    end
    end
end
end


function hailed(NPC, Spawn)
       if GetFactionAmount(Spawn,11) <0 then
    	FaceTarget(NPC, Spawn)
        choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
        end
     else   
	    FaceTarget(Spawn, NPC)
        PlayFlavor(NPC, "voiceover/english/walter_channing/qey_north/walterchanning.mp3", "", "hello", 1421937036, 2649740764, Spawn)
	    local conversation = CreateConversation()
  	    	if not HasQuest(Spawn,Sword) and not HasCompletedQuest(Spawn, Sword) then
            AddConversationOption(conversation, "The Ironforge family seems to have made a name for themselves.", "Ironforge")
            end
            if GetQuestStep(Spawn,Sword)==2 then
        	AddConversationOption(conversation, "Noelle was extremely pleased with your work.", "Delivered")
        	end
  	    	if  HasQuest(Spawn,Sword) or HasCompletedQuest(Spawn, Sword) then
            AddConversationOption(conversation, "Remind me a little bit about the Ironforge family.", "Ironforge")
            end
        AddConversationOption(conversation, "I'll take a look.  Thank you.")
    	StartConversation(conversation, NPC, Spawn, "Good day to you!  Perhaps you would be interested in seeing some of the armor and weaponsthat have made the Ironforge family famous?")
        end
end


function Ironforge(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/merchant_walter_channing/qey_north/walterchanning000.mp3", "", "nod", 2147499763, 4176830287, Spawn)
    local conversation = CreateConversation()
	    	if not HasQuest(Spawn,Sword) and not HasCompletedQuest(Spawn, Sword) then
        	AddConversationOption(conversation, "Sounds like the family does a lot of great work.", "Work")
            end
	AddConversationOption(conversation, "Interesting.  Thanks for sharing.")
	StartConversation(conversation, NPC, Spawn, "The family has a long standing reputation for delivering high quality arms dating as far back as the War of the Plagues.  They've passed down their smithing secrets for generations.")
end	 

function Work(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/walter_channing/qey_north/walterchanning001.mp3", "", "ponder", 2678423442, 1274462543, Spawn)
    local conversation = CreateConversation()
    AddConversationOption(conversation, "Say no more.  If it involves Ironforge craftsmanship then hand it over!", "Delivery2")
	AddConversationOption(conversation, "I really shouldn't. Sorry.")
	StartConversation(conversation, NPC, Spawn, "Speaking of work, if you have a momment I need an errand run, and I'm quite busy tending the forge.")
end	 

function Delivery2(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,Sword)
    end
 
function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/walter_channing/qey_north/walterchanning003.mp3", "", "thanks", 1064494929, 3797173733, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "It was a pleasure.", "FinishQuest")
	StartConversation(conversation, NPC, Spawn, "Thank you for the assistance!  I might ask for your services again.")
end	

function FinishQuest(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,Sword, 2)
    end    
    
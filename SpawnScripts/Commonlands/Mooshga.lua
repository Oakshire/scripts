--[[
    Script Name    : SpawnScripts/Commonlands/Mooshga.lua
    Script Author  : Premierio015
    Script Date    : 2020.09.06 02:09:46
    Script Purpose : 
                   : 
--]]

local HyenaJerky = 429
local SeafoodSurprise = 430

function spawn(NPC)

end

--[[
function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    if not HasQuest(Spawn, HyenaJerky) and not HasCompletedQuest(Spawn, HyenaJerky) then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1055.mp3", "", "", 0, 0, Spawn)
    AddConversationOption(conversation, "Captain Arellius said you could use a hand. You are a cook?", "dlg1")
    AddConversationOption(conversation, "I don't think I'm hungry right now.")
    StartConversation(conversation, NPC, Spawn, "So, you be adventurer sent by Militia to help Mooshga? You look like you hungry! Mooshga feed you good!")
    elseif GetQuestStep(Spawn, HyenaJerky) == 1 then
    quest1progress(NPC, Spawn)
    elseif GetQuestStep(Spawn, HyenaJerky) == 2 then
    dlg3(NPC, Spawn)
end   
    end
--]]


function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1055.mp3", "", "", 0, 0, Spawn)
    if not HasQuest(Spawn, HyenaJerky) and not HasCompletedQuest(Spawn, HyenaJerky) then
	local conversation = CreateConversation()
	AddConversationOption(conversation, "No, I'm not hungry.")
	AddConversationOption(conversation, "I guess that depends on the menu.", "dlg1")
	StartConversation(conversation, NPC, Spawn, "Mooshga meet new friend! You look hungry. Mooshga hungry. You hungry?")
	elseif GetQuestStep(Spawn, HyenaJerky) == 1 or GetQuestStep(Spawn, SeafoodSurprise) == 1 then
	questprogress(NPC, Spawn)
	elseif GetQuestStep(Spawn, HyenaJerky) == 2 then
	dlg3(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, HyenaJerky) and not HasCompletedQuest(Spawn, SeafoodSurprise) then
	dlg4(NPC, Spawn)
	elseif GetQuestStep(Spawn, SeafoodSurprise) == 2 then
	dlg7(NPC, Spawn)
end
   end

function dlg1(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "Come to think of it, I am hungry. What are you going to make?", "dlg2")
 AddConversationOption(conversation, "An ogre baker? I'll be on my way.")
 StartConversation(conversation, NPC, Spawn, "Mooshga is greatest baker in all Commonlands! You want Mooshga make somethin' for you?")
end

function dlg2(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "Jerky sounds good. I'll do it.", "offer")
 AddConversationOption(conversation, "Ogre cooking sounds scary to me. Bye!")
 StartConversation(conversation, NPC, Spawn, "Mooshga hungry for jerky. Plus Mooshga try to make old secret recipe of famous ancestor chef. You go collect pieces for jerky so Mooshga can figure out recipe! It made from hyena meat. Get carrion hound ears for Mooshga.")
end

function dlg3(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "I have brought you the ears that you asked for.", "quest1complete")
 AddConversationOption(conversation, "Nothing right now.")
 StartConversation(conversation, NPC, Spawn, "You back so quick! What you have for Mooshga?")
end

function dlg4(NPC, Spawn)
     FaceTarget(NPC, Spawn)
     conversation = CreateConversation()
	AddConversationOption(conversation, "Yes, I am. I would love more of your cooking, Mooshga.", "dlg5")
	AddConversationOption(conversation, "What? No thanks... I just ate!")
	StartConversation(conversation, NPC, Spawn, "You still look hungry! You hungry? Mooshga knows when people hungry. Mooshga will feed you but you do something for Mooshga first.")
end


function dlg5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What type of claws?", "dlg6")
		AddConversationOption(conversation, "I think i just lost my apetite")
	StartConversation(conversation, NPC, Spawn, "Mooshga make special surprise today. Mooshga needs claws for surprise recipe she figure out.")
end

function dlg6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'm getting hungrier by the minute.", "offer2")
	AddConversationOption(conversation, "Oh... I think i just lost my apetite.")
	StartConversation(conversation, NPC, Spawn, "Mooshga need special claws from crabs. The HUGE ones. You find crabs in southeast. They live in freshwater. Near old tower there is good spot. You go find crabs and snap tasty claws off, then bring back to Mooshga.")
end

function dlg7(NPC, Spawn)
        FaceTarget(NPC, Spawn)
	    local conversation = CreateConversation()
        AddConversationOption(conversation, "I have the huge crab claws for your soup, Mooshga.", "dlg8")
         AddConversationOption(conversation, "Nothing right now.")
    	StartConversation(conversation, NPC, Spawn, "You back so quick! What you have for Mooshga?")
end    


function dlg8(NPC, Spawn)
    SetStepComplete(Spawn, SeafoodSurprise, 2)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks, Mooshga.")
	StartConversation(conversation, NPC, Spawn, "Mooshga makes you some too. Here you go.")
end  





function quest1complete(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 SetStepComplete(Spawn, HyenaJerky, 2)
 conversation = CreateConversation()
 AddConversationOption(conversation, "You're welcome.")
 StartConversation(conversation, NPC, Spawn, "Oh, thanks you! You make Mooshga happy Ogre.")
end

function offer(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 OfferQuest(NPC, Spawn, HyenaJerky)
end

function offer2(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 OfferQuest(NPC, Spawn, SeafoodSurprise)
end


function questprogress(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Okay, okay. Mooshga, I'm going.")
	StartConversation(conversation, NPC, Spawn, "You don't look hungry enough. You go away! NO FOOD FOR YOU!")
end	


function respawn(NPC)

end


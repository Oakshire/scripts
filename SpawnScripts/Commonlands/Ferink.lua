--[[
    Script Name    : SpawnScripts/Commonlands/Ferink.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.21 09:05:53
    Script Purpose : 
                   : 
--]]

local ARatDivided = 447

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, ARatDivided) and not HasCompletedQuest(Spawn, ARatDivided) then
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What's wrong, Ferink?", "Option1")
	AddConversationOption(conversation, "I must be going.")
	StartConversation(conversation, NPC, Spawn, "Oh whys oh whys can't we be together?  Oh whys oh whys. My true love, the loves of my life is locked away on the other sides of the river and I can't be with her. Oh whys does it has to be this ways? It's not fair, not fair at all. Something must be done!")
	elseif GetQuestStep(Spawn, ARatDivided) == 1 then
	QuestProgress(NPC, Spawn)
end
    end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "You poor thing, what can I do to help?", "Option2")
	AddConversationOption(conversation, "A love struck ratonga...  bye!")
	StartConversation(conversation, NPC, Spawn, "Amoora, my love. She is the love of my life, the shining beacon of my heart, my passion, my preciouses Amoora has my heart and holds it captive. I aches so when I can't be nears her, when I can't smell her sweet smelling fur.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Nice. Kinda stinky, but still nice.", "Option3")
	AddConversationOption(conversation, "I am not really in the mood for a sob story.")
	StartConversation(conversation, NPC, Spawn, "Oh, just because I'm a ratonga doesn't means I can't be with the loves of my life. No, it does not! This is just not right! I should go to her now! But I can't;  her parents don't like me. I don't know why... I'm a nice person, right?  Oh, my Amoora.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll go find her.", "offer")
	AddConversationOption(conversation, "Sorry, I'm not interested.")
	StartConversation(conversation, NPC, Spawn, "Go to her! Tell her I loves her! Tell her I'll give anything to be with her! Tell her...  just tell her I loves her for me.  My Amoora.")
end

function Option4(NPC, Spawn)
    SetStepComplete(Spawn, ARatDivided, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Cheer up, Ferink.")
	StartConversation(conversation, NPC, Spawn, "She was?  Oh my Amoora! I am lost without her.")
end




function QuestProgress(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll leave you alone.")
	StartConversation(conversation, NPC, Spawn, "Oh, my Amoora, I misses you so...   I wish I could be at her sides. Her beautiful smile, her sweet purr... To be able to holds her hand again.")
end

function QuestFinish(NPC, Spawn)
      FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if GetQuestStep(Spawn, ARatDivided) == 2 then
	AddConversationOption(conversation, "I spoke to Amoora, Ferink.  She seems as upset as you are over this whole thing.", "Option4")
	end
	StartConversation(conversation, NPC, Spawn, "Sob!... Sniffle! ...")
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, ARatDivided)
end



function respawn(NPC)
	spawn(NPC)
end
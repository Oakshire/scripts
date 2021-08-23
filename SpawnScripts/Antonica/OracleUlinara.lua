--[[
    Script Name    : SpawnScripts/Antonica/OracleUlinara.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.22 08:08:17
    Script Purpose : 
                   : 
--]]

local TreeWithinATree = 5345

function spawn(NPC)
ProvidesQuest(NPC, TreeWithinATree)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/oracle_ulinara/antonica/oracleulinara000.mp3", "", "", 3934113789, 4233620470, Spawn)
	if not HasQuest(Spawn, TreeWithinATree) and not HasCompletedQuest(Spawn, TreeWithinATree) then
	AddConversationOption(conversation, "You saw what?", "Option1")
	elseif GetQuestStep(Spawn, TreeWithinATree) == 2 then
	Option3(NPC, Spawn)
	end
    AddConversationOption(conversation, "Sorry, I didn't mean to disturb you.")
    StartConversation(conversation, NPC, Spawn, "It appeared in the Karma Pool, while I was in trance. I saw it! So beautiful.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/oracle_ulinara/antonica/oracleulinara001.mp3", "", "", 3087449530, 830881104, Spawn)
	AddConversationOption(conversation, "Fine, I'll be on my way.", "Option2")
	StartConversation(conversation, NPC, Spawn, "I am sorry, but we are having a private meeting.  This is no concern of yours.")
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/oracle_ulinara/antonica/oracleulinara002.mp3", "", "", 2282102456, 2757764872, Spawn)
	AddConversationOption(conversation, "I suppose I could. Where should I look?", "offer")
	AddConversationOption(conversation, "I'm too busy to go looking for a tree.  ")
	StartConversation(conversation, NPC, Spawn, "Wait!  Please do not go. You ... you may be of use to us. I want to find the tree I saw and confirm its location. Unfortunately, I must remain here in the tower with my studies. Would you please help me?")
end

function Option3(NPC, Spawn)
    SetStepComplete(Spawn, TreeWithinATree, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/oracle_ulinara/antonica/oracleulinara004.mp3", "", "", 511083873, 3460113598, Spawn)
	AddConversationOption(conversation, "The spot should be right here if I remember correctly.")
	StartConversation(conversation, NPC, Spawn, "Thank you so much.  You have succeeded wonderfully. This is the very acorn from my vision; it is exactly what I saw.  Will you please do one more thing for me?  Will you please mark on this map the location of the tree?  Then I will give you, in return, a recipe for making a magic food with the Golden Acorn.")
end



function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, TreeWithinATree)
end





function respawn(NPC)
	spawn(NPC)
end
--[[
    Script Name    : SpawnScripts/Steamfont/GimbleTinkerton.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.22 09:05:02
    Script Purpose : 
                   : 
--]]

local ComponentsForGimble = 5229

function spawn(NPC)
ProvidesQuest(NPC, ComponentsForGimble)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if not HasQuest(Spawn, ComponentsForGimble) and not HasCompletedQuest(Spawn, ComponentsForGimble) then
	AddConversationOption(conversation, "Perhaps, if you need something recovered, I can be of assistance...", "Option2")
	elseif GetQuestStep(Spawn, ComponentsForGimble) == 5 then
	AddConversationOption(conversation, "Oaf indeed.  I've returned with what you require.", "Option2")
	end
	AddConversationOption(conversation, "Get out of my way gnome, I've no use for a runt like you. ")
	StartConversation(conversation, NPC, Spawn, "No, no, that won't do.  Oh, whatever shall I do, it's too dangerous for me to do.  But need those reagents I do!   Why are you bothering me?  Can't you see I'm busy thinking?  No, too oblivious for that I'm sure!  You oaf!")
	PlayFlavor(NPC, "voiceover/english/gimble_cognoggin/commonlands/gimblecognoggin.mp3", "", "", 1003375179, 1991772442, Spawn)
	
end
   
function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll help you, but there'd better be something in it for me.  I'm not cheap, either.", "offer")
	AddConversationOption(conversation, "I'm not sure you even know what you're talking about.  I'll be on my way.")
	StartConversation(conversation, NPC, Spawn, "Hmm ...  yes, yes, yes!  You CAN help me!  But what would it cost, I wonder ... I would have to divulge the components ... but I suppose I have no other choice.  Will you help me or not?")
	PlayFlavor(NPC, "voiceover/english/gimble_cognoggin/commonlands/gimblecognoggin000.mp3", "", "", 237836378, 2367742938, Spawn)
end


function Option2(NPC, Spawn)
    SetStepComplete(Spawn, ComponentsForGimble, 5)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Whatever.  Your coin's as good as anyone else's.")
	StartConversation(conversation, NPC, Spawn, "YES! I'll be the first gnome to create this potion! You don't know what this means to me! And I suppose you don't really care. Fine then. Here's your payment. Let it never be said that Gimble Cognoggin welshed on a deal!")
	PlayFlavor(NPC, "voiceover/english/gimble_cognoggin/commonlands/gimblecognoggin002.mp3", "", "", 3332459171, 1481108804, Spawn)
end


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, ComponentsForGimble)
end



function respawn(NPC)
	spawn(NPC)
end
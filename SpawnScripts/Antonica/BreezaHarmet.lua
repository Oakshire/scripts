--[[
    Script Name    : SpawnScripts/Antonica/BreezaHarmet.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.24 05:08:40
    Script Purpose : 
                   : 
--]]

local ExploringTheChessboard = 5348

function spawn(NPC)
ProvidesQuest(NPC, ExploringTheChessboard)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/breeza_harmet/antonica/breezaharmet000.mp3", "", "", 3595319695, 2394703279, Spawn)
	if not HasQuest(Spawn, ExploringTheChessboard) and not HasCompletedQuest(Spawn, ExploringTheChessboard) then
	AddConversationOption(conversation, "They are beautiful pieces.  Is it the game or the carving of wood that you like more?", "Option1")
	elseif GetQuestStep(Spawn, ExploringTheChessboard) == 2 then
    AddConversationOption(conversation, "I have explored within Stormhold and I can tell you that the chessboard banquet hall does still exist.", "Option2")
	end
	AddConversationOption(conversation, "I see.  Well, I will let you finish up your project in peace.  ")
	StartConversation(conversation, NPC, Spawn, "Hello, traveler!  I'm sorry about the mess. I'm carving a set of chess pieces, but I'm almost finished. Please, I'll only be a few minutes. Won't you listen to my story of the chessboard of Stormguard? I must know if it's only a story or if it bears any truth!")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/breeza_harmet/antonica/breezaharmet001.mp3", "", "", 3045154578, 2506070034, Spawn)
	AddConversationOption(conversation, "Maybe you will be able to see it some day.", "offer")
	StartConversation(conversation, NPC, Spawn, "I love carving and shaping the wood, but I enjoy the game even more. It's nice to sit in the warm sun playing chess with a friend. And talking about real queens and knights! Which reminds me ...   Did you know that the Knights of Thunder played chess, too? I heard stories that they hold their banquets upon a giant chessboard!  Oh, that'd be wonderful to see!")
end

function Option2(NPC, Spawn)
    SetStepComplete(Spawn, ExploringTheChessboard, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/breeza_harmet/antonica/breezaharmet003.mp3", "", "", 518518991, 634971827, Spawn)
	AddConversationOption(conversation, "I hope you are able to see it for yourself one day.")
	StartConversation(conversation, NPC, Spawn, "It does?!  You saw it? I imagine it was a grand sight! Thank you for confirming the legend for me. It's good to know I wasn't spreading a false rumor!")
end




function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, ExploringTheChessboard)
end


function respawn(NPC)
	spawn(NPC)
end
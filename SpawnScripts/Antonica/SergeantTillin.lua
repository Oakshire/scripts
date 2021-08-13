--[[
    Script Name    : SpawnScripts/Antonica/SergeantTillin.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.12 06:08:07
    Script Purpose : 
                   : 
--]]

local TillinGnollWoes = 5336

function spawn(NPC)
ProvidesQuest(NPC, TillinGnollWoes)
end

function hailed(NPC, Spawn)
    local count = GetQuestCompleteCount(Spawn, TillinGnollWoes)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, TillinGnollWoes) and count <= 5 then
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/sergeant_tillin/antonica/sergeant_tillin001.mp3", "", "shrug", 2442572025, 2186334114, Spawn)
	AddConversationOption(conversation, "Sure, why not?", "offer")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "Hah!  We've so many adventurers out these days that I think the gnolls decided to push back a bit.  We heard that they're plotting inside Blackburrow.  Think you could help us out?")
	elseif GetQuestStep(Spawn, TillinGnollWoes) == 1 then
	Quest_Progress(NPC, Spawn)
    elseif GetQuestStep(Spawn, TillinGnollWoes) == 2 then
    Quest_Finish(NPC, Spawn)
end
 end
 
 


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, TillinGnollWoes)
end

function Quest_Progress(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/sergeant_tillin/antonica/sergeant_tillin003.mp3", "", "pout", 1151226967, 1843284130, Spawn)
	AddConversationOption(conversation, "Not yet, no...")
	StartConversation(conversation, NPC, Spawn, "Naaa!  What're you doing back so soon?  You haven't found what we're looking for!")
end

function Quest_Finish(NPC, Spawn)
    SetStepComplete(Spawn, TillinGnollWoes, 2)
    	FaceTarget(NPC, Spawn)
    local conversation = CreateConversation()
      PlayFlavor(NPC, "voiceover/english/sergeant_tillin/antonica/sergeant_tillin004.mp3", "", "", 2966124609, 2660592034, Spawn)
    	AddConversationOption(conversation, "Sure, I could stand some.", "offer")
    	AddConversationOption(conversation, "Not right now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Ahh, well done!  Here's that coin I promised.  Looking for more work?")
end



function respawn(NPC)
	spawn(NPC)
end
--[[
	Script Name	: SpawnScripts/Graystone/Ironmallet.lua
	Script Purpose	: Ironmallet <Mender>
	Script Author	: Dorbin
	Script Date	: 2022.01.28
	Script Notes	: 
--]]
local Daggers = 5462
local Tongs = 5482

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    if GetQuestStep(Spawn, Daggers)==1 then
    AddConversationOption(conversation, "I am here to pick up daggers for Kruuprum.","Pickup")
    end
    if GetQuestStep(Spawn, Tongs)==1 then
    AddConversationOption(conversation, "I am here have Baynor's tongs repaired.","PickupTongs")
    end
	PlayFlavor(NPC, "voiceover/english/mender_ironmallet/qey_village03/menderironmallet000.mp3", "", "", 296833708, 2408095573, Spawn)
	AddConversationOption(conversation, "I am sure you will get that name someday.")
	StartConversation(conversation, NPC, Spawn, "I'm just the help around here.  But someday I will have my own forge ... Ironmallet's House of ... er ... well ... something!  The name will come to me someday.")
end

function Pickup(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    AddConversationOption(conversation, "I'll consider that. Thank you.","Pickup")
    AddConversationOption(conversation, "I'm just picking up. Don't spread your gossip to me.","Pickup")
	PlayFlavor(NPC, "voiceover/english/mender_ironmallet/qey_village03/menderironmallet001.mp3", "", "listen", 4074173931, 1699472908, Spawn)
	StartConversation(conversation, NPC, Spawn, "Wha?...Eh?... Here ya go. Here is another sack of rusted daggers. These things aren't worth reselling or refurbishing. What Kruuprum wants with this refuse is beyond this dwarf! If I were you, I would steer clear of his wares.")
end

function PickupTong(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    AddConversationOption(conversation, "Great. I'll make sure he gets them.","PickupTongs")
	PlayFlavor(NPC, "voiceover/english/mender_ironmallet/qey_village03/menderironmallet001.mp3", "", 65782, 4074173931, 1699472908, Spawn)
	StartConversation(conversation, NPC, Spawn, "Oh... again? Baynor's aim is waaaay off. Okay, hand them here. Silly supersticious halfelf refusing to fix his tongs. Refusing to fix his tongs. This is the tenth time I've fixed the blasted things... There, there you go. Good as new. ")
end

function PickupTongs(NPC, Spawn)
    SetStepComplete(Spawn, Tongs, 1)
   end


function Pickup(NPC, Spawn)
    SetStepComplete(Spawn, Daggers, 1)
   end
--[[
    Script Name    : SpawnScripts/Freeport/DyvllSsavan.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.16 06:07:37
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "dyvll_ssavan/fprt_north/trainer_defiler001.mp3", "", "", 2067184541, 864242159, Spawn)
    AddConversationOption(conversation, "Just looking.")
    StartConversation(conversation, NPC, Spawn, "What brings you to the Temple of War, "..GetName(Spawn).." ?")

end

function respawn(NPC)

end


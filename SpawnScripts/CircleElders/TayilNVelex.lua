--[[
    Script Name    : SpawnScripts/CircleElders/TayilNVelex.lua
    Script Author  : premierio015
    Script Date    : 2019.10.24 01:10:46
    Script Purpose :  Tayl Script for Circle Event.
--]]

local TheFinalAssault = 367
local KaylID = 433249

function spawn(NPC)

end

function hailed(NPC, Spawn)    -- Dialogue to finish Quest after Kyle is Dead
    local zone = GetZone(NPC)
    local Kayl = GetSpawnByLocationID(zone, KaylID)
    if Kayl == nil then
        FaceTarget(NPC, Spawn)
        Conversation = CreateConversation()
        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_epic01/tayilnvelex000.mp3", "", "", 1803294657, 2493064533, Spawn)
        if HasQuest(Spawn, TheFinalAssault) and GetQuestStep(Spawn, TheFinalAssault) == 6 then
        AddConversationOption(Conversation, "So is the battle over?", "reward")
        end
        AddConversationOption(Conversation, "Goodbye.")
        StartConversation(Conversation, NPC, Spawn, "Well done, "..GetName(Spawn)..". That fool Kayl had no idea what was coming! The Tunarians are finished on this island.")
  end
      end

     

function reward(NPC, Spawn)
 SetStepComplete(Spawn, TheFinalAssault,6)
 FaceTarget(NPC, Spawn)
 Conversation = CreateConversation()
 PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_epic01/tayilnvelex001.mp3")
 AddConversationOption(Conversation, "Thank you, Tayil.")
 StartConversation(Conversation, NPC, Spawn, "Yes, our efforts have been a success. The island is ours, and so is this fine assortment of valuables! The Overlord will hear of your bravery, Ecobi. As promised, here is a reward that will  prove useful in your future adventures.")
end


function respawn(NPC)
         spawn(NPC, Spawn)
end




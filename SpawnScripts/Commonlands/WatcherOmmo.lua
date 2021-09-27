--[[
    Script Name    : SpawnScripts/Commonlands/WatcherOmmo.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.22 08:05:02
    Script Purpose : 
                   : 
--]]

local InHisName = 5228
local RetruningToCaptainFeralis = 5221

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
if GetDeity(Spawn) ~= 1  then 
	if not HasQuest(Spawn, InHisName) and not HasCompletedQuest(Spawn, InHisName)  then
    local conversation = CreateConversation()
	AddConversationOption(conversation, "What is required of me?", "Option1")
	AddConversationOption(conversation, "I can not serve at this time.")
	StartConversation(conversation, NPC, Spawn, "Your service is required, citizen.")
	elseif HasCompletedQuest(Spawn,  RetruningToCaptainFeralis) then
	PlayFlavor(NPC, "", "Made quite a name for yourself, hmm?", "", 0, 0, Spawn)
	else
	PlayFlavor(NPC, "", "Citizen.", "nod", 0, 0, Spawn)
    end
elseif GetDeity(Spawn) == 1 then
    PlayFlavor(NPC, "", "Be gone. Worm!", "", 0, 0, Spawn)
   end
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Very well.", "offer")
	StartConversation(conversation, NPC, Spawn, "Whatever He desires. You will give your service to the Commonlands in His name and report to Gerun Pontian here in the Commonlands at the gates to the City of Freeport.")
end


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, InHisName)
end


function respawn(NPC)
	spawn(NPC)
end
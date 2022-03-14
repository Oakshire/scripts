--[[
	Script Name	: SpawnScripts/Graystone/Coppershot.lua
	Script Purpose	: Coppershot <Bartender>
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
local Delivery =5444

function spawn(NPC)
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")    
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn) 
if math.random(1, 100) <= 75 then
        choice = math.random(1,2)
        FaceTarget(NPC, Spawn)
         if choice ==1 then
         PlayFlavor(NPC, "", "", "hello", 0, 0)
        else
        PlayFlavor(NPC, "", "", "nod", 0, 0)
         end
    end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    if GetQuestStep (Spawn, Delivery) == 1 then 
	AddConversationOption(conversation, "I've got a delivery of lager for you.", "LagerDelivery")
	end
	PlayFlavor(NPC, "voiceover/english/bartender_coppershot/qey_village03/bartendercoppershot000.mp3", "", "", 2171336743, 1878294501, Spawn)
	AddConversationOption(conversation, "I'm not looking for trouble.", "dlg_13_1")
	AddConversationOption(conversation, "This is not my kind of place.")
	StartConversation(conversation, NPC, Spawn, "If yer comin' in here to fight an' make trouble, the Graystone Watch will toss you out on your backside!")
end

function LagerDelivery(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/bartender_coppershot/qey_village03/bartendercoppershot001.mp3", "", "thanks", 552811210, 4089856593, Spawn)
	AddConversationOption(conversation, "I'll make sure he gets this. Thanks.", "UpdateDelivery")
	StartConversation(conversation, NPC, Spawn, "Ye don't say! Must'a been ol' Deeppockets that sent ya. His family brew is famous here! Please, give him this antique stein. Now don't drop it! He'll be sure to find it interesting.")
end

function UpdateDelivery(NPC, Spawn)
    SetStepComplete(Spawn, Delivery, 1)
   end

function dlg_13_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/bartender_coppershot/qey_village03/bartendercoppershot002.mp3", "", "smile", 3971179899, 2182118596, Spawn)
	AddConversationOption(conversation, "Frozen Tundra Tavern? Are you from the northlands?", "dlg_13_2")
	AddConversationOption(conversation, "I hear ya.")
	StartConversation(conversation, NPC, Spawn, "Welcome to the Frozen Tundra Tavern where the grog flows like the Ocean of Tears.")
end


function dlg_13_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/bartender_coppershot/qey_village03/bartendercoppershot003.mp3", "", "", 2445961475, 534113227, Spawn)
	AddConversationOption(conversation, "Sounds wise--good marketing.")
	StartConversation(conversation, NPC, Spawn, "I can't stand the ice! Give me halls of stone! The barbarians seem to prefer the name and I prefer their coin.")
end
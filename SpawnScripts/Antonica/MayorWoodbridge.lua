--[[
    Script Name    : SpawnScripts/Antonica/MayorWoodbridge.lua
    Script Author  : Dorbin
    Script Date    : 2023.04.30 01:04:47
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/Windstalkers.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SendMessage(Spawn,"Mayor Woodbridge looks at you cautiously. He appears to be sizing you up.")
	PlayFlavor(NPC,"","","ponder",0,0,Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
	if Message == "listen" and IsInCombat(NPC) == false then
	PlayFlavor(NPC,"","","glare",0,0,Spawn)
	AddConversationOption(conversation, "All right, consider me gone.")
	StartConversation(conversation, NPC, Spawn, "Well, since you're going to listen in you may as well join the conversation.  Ahhh, get out of here before it gets rough for ya!")
end
end
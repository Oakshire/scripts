--[[
    Script Name    : SpawnScripts/GMHall/Wizzy.lua
    Script Author  : TyroneSWG
    Script Date    : 2019.01.15 11:01:51
    Script Purpose : Dragon that mounts people. Wait a minute...
                   : 
--]]

local mount_favorites = { '25423', '24053', '25864', '23713', '15397', '20950', '20344', '17509' }
function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I need a mount please!", "mountme")
	AddConversationOption(conversation, "I would like to dismount", "unmountme")
	StartConversation(conversation, NPC, Spawn, "Greetings.")

end

function mountme(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    SendMessage(Player, "Did it work?", "red")
    SetMount(Spawn, mount_favorites[ math.random( 1, #mount_favorites - 1 ) ] )
    --SetSpeed(Spawn, 100)
end

function unmountme(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    SetMount(Spawn, 0)
    SetSpeed(Spawn, 1)
end

function respawn(NPC)

end
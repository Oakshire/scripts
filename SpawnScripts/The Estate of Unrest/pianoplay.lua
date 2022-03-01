--[[
    Script Name    : SpawnScripts/The Estate of Unrest/pianoplay.lua
    Script Author  : neatz09
    Script Date    : 2021.01.02 01:01:02
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, Message)
    Say(NPC, "Plays an emote if quest is uncompleted.")
if Message == "Play piano" then
	SendMessage(Spawn, "You don't have any music to play.", "white")
end

end

function respawn(NPC)

end


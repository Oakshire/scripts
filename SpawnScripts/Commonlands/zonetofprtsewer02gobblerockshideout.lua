--[[
    Script Name    : SpawnScripts/Commonlands/zonetofprtsewer02gobblerockshideout.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.16 03:07:45
    Script Purpose : Access to Gobblerock's Hideout zone
                   : 
--]]

local TheSewerItKey = 5321
local AnOldKey = 3773

function spawn(NPC)

end

function can_use_command(NPC, Spawn, Command)
if HasItem(Spawn, AnOldKey) or HasQuest(Spawn, TheSewerItKey) then
return true
elseif not HasItem(Spawn, AnOldKey) then
SendMessage(Spawn, "Requires a key", 20)    
return false
end
   end


function respawn(NPC)
	spawn(NPC)
end
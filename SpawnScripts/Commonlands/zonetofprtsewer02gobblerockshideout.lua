--[[
    Script Name    : SpawnScripts/Commonlands/zonetofprtsewer02gobblerockshideout.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.16 03:07:45
    Script Purpose : 
                   : 
--]]

TheSewerItKey = 5321
AnOldKey = 3773

function spawn(NPC)

end

function can_use_command(NPC, Spawn, Command)
if HasItem(Spawn, AnOldKey) or HasQuest(Spawn, TheSewerItKey) then
SetAccessToEntityCommand(Spawn,NPC,"use",1)

elseif not HasItem(Spawn, AnOldKey) then
SetAccessToEntityCommand(Spawn,NPC,"use",0)
SendMessage(Spawn, "Requires a key", 20)
end
   end

function respawn(NPC)
	spawn(NPC)
end
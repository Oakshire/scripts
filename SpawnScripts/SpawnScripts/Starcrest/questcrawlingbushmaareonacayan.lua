--[[
    Script Name    : SpawnScripts/Starcrest/questcrawlingbushmaareonacayan.lua
    Script Author  : Jabantiz
    Script Date    : 2018.06.14 11:06:31
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
	if Message == "Pull Yourself Through the Foliage" then
		SetPosition(Spawn, 744.97, -19.16, 309.54, 49.11)
	end
end


--[[
    Script Name    : SpawnScripts/QueensColony/fogcubespell.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.22 06:08:35
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
        SetPlayerProximityFunction(NPC, 15, "InRange", "LeaveRange")
end

function respawn(NPC)
        spawn(NPC)
end

function InRange(NPC)
        local zone = GetZone(NPC)
        local Puppeteer = GetSpawnByLocationID(zone, 430289)

        if Puppeteer ~= nil then
            if IsAlive(Puppeteer)== true then
            PlayAnimation(NPC, 4012)
            AddTimer(NPC, 7000, "InRange")
        end
end
end

function LeaveRange(NPC)
        PlayAnimation(NPC, 4011) 
end
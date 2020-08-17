--[[
    Script Name    : SpawnScripts/SourceEvil/adefiledpriest.lua
    Script Author  : Lemmeron
    Script Date    : 2020.08.16 
    Script Purpose : To test scripts and get these priests to heal and assist Vith once summoned by him
                   : 
--]]

local VithID = 2540005
local Priest1loc = 433225
local Priest2loc = 433226

function healVith(NPC)
local Vith = GetSpawn(NPC, VithID)
   local zone = GetZone(Spawn)
   local priest1 = GetSpawnByLocationID(zone, Priest1loc)
        CastSpell(Vith, 200074, 1, NPC)
        Say(NPC, "1 healing you master")
 Say(priest1, "priestone healing")
end

function healVith2(NPC, Vith)
local Vith = GetSpawn(NPC, VithID)
        CastSpell(Vith, 130106, 1, NPC)
        Say(NPC, "2 healing you master")
end



function spawn(NPC)
        local zone = GetZone(Spawn)
        local priest1 = GetSpawnByLocationID(zone, Priest1loc)
        local priest2 = GetSpawnByLocationID(zone, Priest2loc)
        Say(NPC, "Join us in death !")
        P1(NPC)
        local Vith = GetSpawn(NPC, VithID)
        AddTimer(NPC, 10000, "healVith")
        AddTimer(NPC, 20000, "healVith2", 1, Vith)
end

function P1(NPC)
   local zone = GetZone(Spawn)
   local priest1 = GetSpawnByLocationID(zone, Priest1loc)
    Say(NPC, "i am priest1")
end
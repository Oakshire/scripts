--[[
    Script Name    : SpawnScripts/IsleRefuge1/GoblinSaboteurFirepit.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.21 04:09:42
    Script Purpose : 
                   : 
--]]
local saboteur = 5748

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end


function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC,Spawn)
    if GetQuestStep(Spawn,saboteur)==1 then
        SetStepComplete(Spawn,saboteur,1)
    end
    if  GetQuestStep(Spawn,saboteur)==1  or GetQuestStep(Spawn,saboteur)==2 then
        local zone = GetZone(NPC)
        if GetSpawnByGroupID(zone, 1051222) ==nil then
            SpawnGroupByID(zone,1051222)
--            Gob1 = SpawnByLocationID(zone,133776460)
--            Gob2 = SpawnByLocationID(zone,133776463)
--            Gob3 = SpawnByLocationID(zone,133776464)
--            Gob4 = SpawnByLocationID(zone,133776458)
--            Gob5 = SpawnByLocationID(zone,133776459)

            AddTimer(NPC,500,"Grouping")
            AddTimer(NPC,4000,"FacePlayer",1,Spawn)
            AddTimer(NPC,8200,"AttackPlayer",1,Spawn)
            AddTimer(NPC,8200,"SpawnCheck",1,Spawn)
        end    
    end
end


function Grouping(NPC,Spawn)
        local zone = GetZone(NPC)
            Gob1 = GetSpawnByLocationID(zone,133776460)
            Gob2 = GetSpawnByLocationID(zone,133776463)
            Gob3 = GetSpawnByLocationID(zone,133776464)
            Gob4 = GetSpawnByLocationID(zone,133776458)
            Gob5 = GetSpawnByLocationID(zone,133776459)
            AddSpawnToGroup(Gob1,1051222)            
            AddSpawnToGroup(Gob2,1051222)            
            AddSpawnToGroup(Gob3,"1051222")            
            AddSpawnToGroup(Gob4,"1051222")            
            AddSpawnToGroup(Gob5,"1051222") 
end

function FacePlayer(NPC,Spawn)
           local Gob1 = GetSpawnByLocationID(zone,133776460)
           local Gob2 = GetSpawnByLocationID(zone,133776463)
           local Gob3 = GetSpawnByLocationID(zone,133776464)
           local Gob4 = GetSpawnByLocationID(zone,133776458)
           local Gob5 = GetSpawnByLocationID(zone,133776459)
        if not IsInCombat(Gob1) then            
            FaceTarget(Gob1,Spawn)
            FaceTarget(Gob2,Spawn)
            FaceTarget(Gob3,Spawn)
            FaceTarget(Gob4,Spawn)
            FaceTarget(Gob5,Spawn)
        end
end


function AttackPlayer(NPC,Spawn)
    local zone = GetZone(NPC)
    local   Gob1 = GetSpawnByLocationID(zone,133776460)
    local   Gob2 = GetSpawnByLocationID(zone,133776463)
    local   Gob3 = GetSpawnByLocationID(zone,133776464)
    local   Gob4 = GetSpawnByLocationID(zone,133776458)
    local   Gob5 = GetSpawnByLocationID(zone,133776459)
        Attack(Gob1,Spawn)
        Attack(Gob2,Spawn)
        Attack(Gob3,Spawn)
        Attack(Gob4,Spawn)
        Attack(Gob5,Spawn)
  end         
  
  function SpawnCheck(NPC,Spawn)
        local zone = GetZone(NPC)
           local Gob1 = GetSpawnByLocationID(zone,133776460)
           local Gob2 = GetSpawnByLocationID(zone,133776463)
           local Gob3 = GetSpawnByLocationID(zone,133776464)
           local Gob4 = GetSpawnByLocationID(zone,133776458)
           local Gob5 = GetSpawnByLocationID(zone,133776459)
           local Campfire = GetSpawnByLocationID(zone,133776522)
             
     if Campfire~=nil and IsAlive(Gob1)==true or IsAlive(Gob2)==true or IsAlive(Gob3)==true or IsAlive(Gob4)==true or IsAlive(Gob5)==true then -- States goblins are alive and campfire is active
            AddTimer(NPC,8000,"SpawnCheck",1,Spawn) -- Repeats spawn check
        elseif Campfire~=nil then -- Campfire despawns if goblins depspawn from leashing, which disables the update.  Campfire does not despawn if goblins die by player.
        if GetQuestStep(Spawn,saboteur)==2 then
            SetStepComplete(Spawn,saboteur,2)
        end
    end
end
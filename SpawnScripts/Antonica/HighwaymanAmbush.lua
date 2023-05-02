--[[
    Script Name    : SpawnScripts/Antonica/HighwaymanAmbush.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.02 03:05:41
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 12, "InRange", "LeaveRange")
SetCheck = false
end

function InRange(NPC, Spawn)
    Say(NPC,"Checking SpawnFlag")
 if SetCheck == false then
    Say(NPC,"Spawnflag Passed")
    SetCheck = true
    local zone = GetZone(NPC)
    local Group1HWmanA = GetSpawnByLocationID(zone, 133784689)
    local Group1HWmanB = GetSpawnByLocationID(zone, 133784686)
    local Group1HWmanC = GetSpawnByLocationID(zone, 133784687)
    local Group1HWmanD = GetSpawnByLocationID(zone, 133784688)

    local Group2HWmanA = GetSpawnByLocationID(zone, 133784683)
    local Group2HWmanB = GetSpawnByLocationID(zone, 133784690)
    local Group2HWmanC = GetSpawnByLocationID(zone, 133784691)
    local Group2HWmanD = GetSpawnByLocationID(zone, 133784692)
    
    local Group3HWmanA = GetSpawnByLocationID(zone, 133784697)
    local Group3HWmanB = GetSpawnByLocationID(zone, 133784694)
    local Group3HWmanC = GetSpawnByLocationID(zone, 133784695)
    local Group3HWmanD = GetSpawnByLocationID(zone, 133784696)
    
if IsPlayer(Spawn)== true and IsAlive(Group1HWmanA) == true and IsAlive(Group1HWmanB) == true and IsAlive(Group1HWmanC) == true and IsAlive(Group1HWmanD) == true then
    AddTimer(NPC,6000,"Group1Pop",1, Spawn)
end
if IsPlayer(Spawn)== true and IsAlive(Group2HWmanA) == true and IsAlive(Group2HWmanB) == true and IsAlive(Group2HWmanC) == true and IsAlive(Group2HWmanD) == true then
    AddTimer(NPC,6000,"Group2Pop",1, Spawn)
end
if IsPlayer(Spawn)== true and IsAlive(Group3HWmanA) == true and IsAlive(Group3HWmanB) == true and IsAlive(Group3HWmanC) == true and IsAlive(Group3HWmanD) == true then
    AddTimer(NPC,6000,"Group3Pop",1, Spawn)
end
    AddTimer(NPC,3000,"Despawning")
end
end    
    
function Group1Pop(NPC,Spawn)
    local zone = GetZone(NPC)
    local levelset = MakeRandomInt(18,19)
    local Group1HWmanA = GetSpawnByLocationID(zone, 133784689)
    local Group1HWmanB = GetSpawnByLocationID(zone, 133784686)
    local Group1HWmanC = GetSpawnByLocationID(zone, 133784687)
    local Group1HWmanD = GetSpawnByLocationID(zone, 133784688)
 if IsInCombat(Group1HWmanA) == false then
    RaceSet(Group1HWmanA)
    SpawnSet(NPC,"level",levelset)    
    AddTimer(Group1HWmanA,MakeRandomInt(1000,3000),"Appear")
end
 if IsInCombat(Group1HWmanB) == false then
    RaceSet(Group1HWmanB)
    SpawnSet(NPC,"level",levelset)    
    AddTimer(Group1HWmanB,MakeRandomInt(1000,3000),"Appear")
end
 if IsInCombat(Group1HWmanC) == false then
    RaceSet(Group1HWmanC)
    SpawnSet(NPC,"level",levelset)    
    AddTimer(Group1HWmanC,MakeRandomInt(1000,3000),"Appear")
end
 if IsInCombat(Group1HWmanD) == false then
    RaceSet(Group1HWmanD)
    AddTimer(Group1HWmanD,MakeRandomInt(1000,3000),"Appear")
end
end
 
function Group2Pop(NPC,Spawn)
    local zone = GetZone(NPC)
    local levelset2 = MakeRandomInt(18,19)
    local Group2HWmanA = GetSpawnByLocationID(zone, 133784683)
    local Group2HWmanB = GetSpawnByLocationID(zone, 133784690)
    local Group2HWmanC = GetSpawnByLocationID(zone, 133784691)
    local Group2HWmanD = GetSpawnByLocationID(zone, 133784692)
 if IsInCombat(Group2HWmanA) == false then
    RaceSet(Group2HWmanA)
    SpawnSet(NPC,"level",levelset2)    
    AddTimer(Group2HWmanA,MakeRandomInt(1000,3000),"Appear")
end
 if IsInCombat(Group2HWmanB) == false then
    RaceSet(Group2HWmanB)
    SpawnSet(NPC,"level",levelset2)    
    AddTimer(Group2HWmanB,MakeRandomInt(1000,3000),"Appear")
end
 if IsInCombat(Group2HWmanC) == false then
    RaceSet(Group2HWmanC)
    SpawnSet(NPC,"level",levelset2)    
    AddTimer(Group2HWmanC,MakeRandomInt(1000,3000),"Appear")
end
 if IsInCombat(Group2HWmanD) == false then
    RaceSet(Group2HWmanD)
    SpawnSet(NPC,"level",levelset2)    
    AddTimer(Group2HWmanD,MakeRandomInt(1000,3000),"Appear")
end
end 
 
 function Group3Pop(NPC,Spawn)
    local zone = GetZone(NPC)
    local levelset3 = MakeRandomInt(18,19)
    local Group3HWmanA = GetSpawnByLocationID(zone, 133784697)
    local Group3HWmanB = GetSpawnByLocationID(zone, 133784694)
    local Group3HWmanC = GetSpawnByLocationID(zone, 133784695)
    local Group3HWmanD = GetSpawnByLocationID(zone, 133784696)
 if IsInCombat(Group3HWmanA) == false then
    SpawnSet(NPC,"level",levelset3)    
    RaceSet(Group3HWmanA)
    AddTimer(Group3HWmanA,MakeRandomInt(1000,3000),"Appear")
end
 if IsInCombat(Group3HWmanB) == false then
    SpawnSet(NPC,"level",levelset3)    
    RaceSet(Group3HWmanB)
    AddTimer(Group3HWmanB,MakeRandomInt(1000,3000),"Appear")
end
 if IsInCombat(Group3HWmanC) == false then
    SpawnSet(NPC,"level",levelset3)    
    RaceSet(Group3HWmanC)
    AddTimer(Group3HWmanC,MakeRandomInt(1000,3000),"Appear")
end
 if IsInCombat(Group3HWmanD) == false then
     SpawnSet(NPC,"level",levelset3)    
   RaceSet(Group3HWmanD)
    AddTimer(Group3HWmanD,MakeRandomInt(1000,3000),"Appear")
end
end 

function RaceSet(NPC,Spawn)
    RaceChoice = MakeRandomInt(1,3)
    local Level = GetLevel(NPC)
    local level1 = 18
    local level2 = 19
    local difficulty1 = 6
    local hp1 = 1180
    local power1 = 410
    local difficulty2 = 6
    local hp2 = 1315
    local power2 = 425
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end
    if RaceChoice ==1 then
        SpawnSet(NPC,"race",0)
        if GetGender(NPC)==1 then
        SpawnSet(NPC,"model_type",MakeRandomInt(1467,1471))
        else
        SpawnSet(NPC,"model_type",MakeRandomInt(1462,1466))
        end
    elseif RaceChoice == 2 then
        SpawnSet(NPC,"race",6)
        if GetGender(NPC)==1 then
        SpawnSet(NPC,"model_type",78)
        else
        SpawnSet(NPC,"model_type",79)
        end        
    elseif RaceChoice == 2 then
        SpawnSet(NPC,"race",9)
        if GetGender(NPC)==1 then
        SpawnSet(NPC,"model_type",134)
        else
        SpawnSet(NPC,"model_type",132)
        end      
    end
end


function Appear(NPC,Spawn)
    CastSpell(NPC,41)
    SpawnSet(NPC,"faction",1)
    SpawnSet(NPC,"show_name",1)
    SpawnSet(NPC,"show_level",1)
    SpawnSet(NPC,"attackable",1)
    SpawnSet(NPC,"targetable",1)
    SpawnSet(NPC,"show_command_icon",1)
end

function Despawning(NPC)
    Despawn(NPC)
end
        
function respawn(NPC)
	spawn(NPC)
end
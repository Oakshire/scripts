--[[
    Script Name    : SpawnScripts/Antonica/HighwaymanAmbush.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.02 03:05:41
    Script Purpose : Handles 3 spawning highwaymen groups in Antonica that Ambush Players
                        Proximity Trigger -> 
                        Randomizes race/models and changes 3 exsisting groups of 4 into attackable agro spawns ->
                        Timer starts for despawn -> 
                        Despawn is triggered if groups are not in combat ->
                        Spawn cast Stealth and despawn shortly after.
                        [Respawn of Trigger and Invisisble groups allows for re-trigger]
                   : 
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 12, "InRange", "LeaveRange")
    local zone = GetZone(NPC)
if GetSpawnByLocationID(zone, 133784732) == nil and GetSpawnLocationID(NPC)== 133784683 then
    SpawnByLocationID(zone,133784732)
end
end

function InRange(NPC, Spawn) --PROXIMITY TRIGGER
    local zone = GetZone(NPC)
    local Group1HWmanA = GetSpawnByLocationID(zone, 133784689)
    local Group1HWmanB = GetSpawnByLocationID(zone, 133784686)
    local Group1HWmanC = GetSpawnByLocationID(zone, 133784687)
    local Group1HWmanD = GetSpawnByLocationID(zone, 133784688)

    local Group2HWmanA = GetSpawnByLocationID(zone, 133784693)
    local Group2HWmanB = GetSpawnByLocationID(zone, 133784690)
    local Group2HWmanC = GetSpawnByLocationID(zone, 133784691)
    local Group2HWmanD = GetSpawnByLocationID(zone, 133784692)
    
    local Group3HWmanA = GetSpawnByLocationID(zone, 133784697)
    local Group3HWmanB = GetSpawnByLocationID(zone, 133784694)
    local Group3HWmanC = GetSpawnByLocationID(zone, 133784695)
    local Group3HWmanD = GetSpawnByLocationID(zone, 133784696)
 if GetSpawnByLocationID(zone, 133784732) ~= nil and
        Group1HWmanA ~=nil and 
        Group1HWmanB ~=nil and 
        Group1HWmanC ~=nil and 
        Group1HWmanD ~=nil and 
        Group2HWmanA ~=nil and 
        Group2HWmanB ~=nil and 
        Group2HWmanC ~=nil and 
        Group2HWmanD ~=nil and 
        Group3HWmanA ~=nil and 
        Group3HWmanB ~=nil and 
        Group3HWmanC ~=nil and 
        Group3HWmanD ~=nil 
 then
    Despawn(GetSpawnByLocationID(zone, 133784732))
if IsPlayer(Spawn)== true and IsAlive(Group1HWmanA) == true and IsAlive(Group1HWmanB) == true and IsAlive(Group1HWmanC) == true and IsAlive(Group1HWmanD) == true then
    AddTimer(NPC,2000,"Group1Pop",1, Spawn)
end
if IsPlayer(Spawn)== true and IsAlive(Group2HWmanA) == true and IsAlive(Group2HWmanB) == true and IsAlive(Group2HWmanC) == true and IsAlive(Group2HWmanD) == true then
    AddTimer(NPC,2000,"Group2Pop",1, Spawn)
end
if IsPlayer(Spawn)== true and IsAlive(Group3HWmanA) == true and IsAlive(Group3HWmanB) == true and IsAlive(Group3HWmanC) == true and IsAlive(Group3HWmanD) == true then
    AddTimer(NPC,2000,"Group3Pop",1, Spawn)
end
   AddTimer(NPC,MakeRandomInt(720000,900000),"AliveCheck") --12 to 15 min despawn

end
end    
    
function Group1Pop(NPC,Spawn)
    local zone = GetZone(NPC)
    local Group1HWmanA = GetSpawnByLocationID(zone, 133784689)
    local Group1HWmanB = GetSpawnByLocationID(zone, 133784686)
    local Group1HWmanC = GetSpawnByLocationID(zone, 133784687)
    local Group1HWmanD = GetSpawnByLocationID(zone, 133784688)
 if IsInCombat(Group1HWmanA) == false then
    RaceSet(Group1HWmanA)
end
 if IsInCombat(Group1HWmanB) == false then
    RaceSet(Group1HWmanB)
end
 if IsInCombat(Group1HWmanC) == false then
    RaceSet(Group1HWmanC)
end
 if IsInCombat(Group1HWmanD) == false then
    RaceSet(Group1HWmanD)
end
end
 
function Group2Pop(NPC,Spawn)
    local zone = GetZone(NPC)
    local Group2HWmanA = GetSpawnByLocationID(zone, 133784693)
    local Group2HWmanB = GetSpawnByLocationID(zone, 133784690)
    local Group2HWmanC = GetSpawnByLocationID(zone, 133784691)
    local Group2HWmanD = GetSpawnByLocationID(zone, 133784692)
 if IsInCombat(Group2HWmanA) == false then
    RaceSet(Group2HWmanA)
end
 if IsInCombat(Group2HWmanB) == false then
    RaceSet(Group2HWmanB)
end
 if IsInCombat(Group2HWmanC) == false then
    RaceSet(Group2HWmanC)
end
 if IsInCombat(Group2HWmanD) == false then
    RaceSet(Group2HWmanD)
end
end 
 
 function Group3Pop(NPC,Spawn)
    local zone = GetZone(NPC)
    local Group3HWmanA = GetSpawnByLocationID(zone, 133784697)
    local Group3HWmanB = GetSpawnByLocationID(zone, 133784694)
    local Group3HWmanC = GetSpawnByLocationID(zone, 133784695)
    local Group3HWmanD = GetSpawnByLocationID(zone, 133784696)
 if IsInCombat(Group3HWmanA) == false then
    RaceSet(Group3HWmanA)
end
 if IsInCombat(Group3HWmanB) == false then
    RaceSet(Group3HWmanB)
end
 if IsInCombat(Group3HWmanC) == false then
    RaceSet(Group3HWmanC)
end
 if IsInCombat(Group3HWmanD) == false then
    RaceSet(Group3HWmanD)
end
end 

function  RaceSet(NPC) --RANDOMIZES RACE APPEARANCES BETWEEN BARBARIAN, HALFELF, & HUMAN
--[[        RaceChoice = GetRace(NPC)
   
    if RaceChoice ==0 then
        if GetGender(NPC)==1 then
        SpawnSet(NPC,"model_type",MakeRandomInt(1467,1471))
        else
        SpawnSet(NPC,"model_type",MakeRandomInt(1462,1466))
        end
    elseif RaceChoice == 6 then
        if GetGender(NPC)==1 then
        SpawnSet(NPC,"model_type",78)
        else
        SpawnSet(NPC,"model_type",79)
        end        
    elseif RaceChoice == 9 then
        if GetGender(NPC)==1 then
        SpawnSet(NPC,"model_type",134)
        else
        SpawnSet(NPC,"model_type",132)
        end       ]]--

    local RaceChoice = MakeRandomInt(1,5)
    if RaceChoice ==1 then
        SpawnSet(NPC,"race",0)
        if GetGender(NPC)==1 then
        SpawnSet(NPC,"model_type",MakeRandomInt(1467,1471))
        else
        SpawnSet(NPC,"model_type",MakeRandomInt(1462,1466))
        end
    elseif RaceChoice == 2 or RaceChoice == 3 then
        SpawnSet(NPC,"race",6)
        if GetGender(NPC)==1 then
        SpawnSet(NPC,"model_type",78)
        else
        SpawnSet(NPC,"model_type",79)
        end        
    elseif RaceChoice == 4 or RaceChoice == 5 then
        SpawnSet(NPC,"race",9)
        if GetGender(NPC)==1 then
        SpawnSet(NPC,"model_type",134)
        else
        SpawnSet(NPC,"model_type",132)
        end     

    end --HANDLES SPAWN ANIMATIONS & ATTACKABLE FLAGGING
    CastSpell(NPC,41)
    AddTimer(NPC,1000,"Crouch")
    AddTimer(NPC,2300,"Uncrouch")
    SpawnSet(NPC,"faction",1)
    SpawnSet(NPC,"show_name",1)
    SpawnSet(NPC,"show_level",1)
    SpawnSet(NPC,"attackable",1)
    SpawnSet(NPC,"targetable",1)
    SpawnSet(NPC,"show_command_icon",1)
    SpawnSet(NPC,"collision_radius",30)
    SpawnSet(NPC,"initial_state",16512)

end


function Crouch(NPC,Spawn)
    CastSpell(NPC,41)
    SpawnSet(NPC,"visual_sate",220)
end 

function Uncrouch(NPC,Spawn)
    SpawnSet(NPC,"visual_sate",0)
end    

function AliveCheck(NPC,Spawn) --CHECKS FOR GROUPS AFTER 15 MIN OF SPAWN. IF NOT IN COMBAT/STILL EXISTS/STILL ALIVE, HIGHWAYMEN HIDE/Despawn AND ENCOUNTER RESETS

    local zone = GetZone(NPC)
    local Group1HWmanA = GetSpawnByLocationID(zone, 133784689)
    local Group1HWmanB = GetSpawnByLocationID(zone, 133784686)
    local Group1HWmanC = GetSpawnByLocationID(zone, 133784687)
    local Group1HWmanD = GetSpawnByLocationID(zone, 133784688)

    local Group2HWmanA = GetSpawnByLocationID(zone, 133784693)
    local Group2HWmanB = GetSpawnByLocationID(zone, 133784690)
    local Group2HWmanC = GetSpawnByLocationID(zone, 133784691)
    local Group2HWmanD = GetSpawnByLocationID(zone, 133784692)
    
    local Group3HWmanA = GetSpawnByLocationID(zone, 133784697)
    local Group3HWmanB = GetSpawnByLocationID(zone, 133784694)
    local Group3HWmanC = GetSpawnByLocationID(zone, 133784695)
    local Group3HWmanD = GetSpawnByLocationID(zone, 133784696)
    
if IsInCombat(Group1HWmanA) == false and Group1HWmanA ~= nil and IsAlive(Group1HWmanA) == true or IsAlive(Group1HWmanA) == false or Group1HWmanA == nil then
    if IsInCombat(Group1HWmanB) == false and Group1HWmanB ~= nil and IsAlive(Group1HWmanB) == true or IsAlive(Group1HWmanB) == false or Group1HWmanB == nil then
        if IsInCombat(Group1HWmanC) == false and Group1HWmanC ~= nil and IsAlive(Group1HWmanC) == true or IsAlive(Group1HWmanC) == false or Group1HWmanC == nil then
            if IsInCombat(Group1HWmanD) == false and Group1HWmanD ~= nil and IsAlive(Group1HWmanD) == true or IsAlive(Group1HWmanD) == false or Group1HWmanD == nil then

if IsInCombat(Group2HWmanA) == false and Group2HWmanA ~= nil and IsAlive(Group2HWmanA) == true or IsAlive(Group2HWmanA) == false or Group2HWmanA == nil then
    if IsInCombat(Group2HWmanB) == false and Group2HWmanB ~= nil and IsAlive(Group2HWmanB) == true or IsAlive(Group2HWmanB) == false or Group2HWmanB == nil then
        if IsInCombat(Group2HWmanC) == false and Group2HWmanC ~= nil and IsAlive(Group2HWmanC) == true or IsAlive(Group2HWmanC) == false or Group2HWmanC == nil then
            if IsInCombat(Group2HWmanD) == false and Group2HWmanD ~= nil and IsAlive(Group2HWmanD) == true or IsAlive(Group2HWmanD) == false or Group2HWmanD == nil then

if IsInCombat(Group3HWmanA) == false and Group3HWmanA ~= nil and IsAlive(Group3HWmanA) == true or IsAlive(Group3HWmanA) == false or Group3HWmanA == nil then
    if IsInCombat(Group3HWmanB) == false and Group3HWmanB ~= nil and IsAlive(Group3HWmanB) == true or IsAlive(Group3HWmanB) == false or Group3HWmanB == nil then
        if IsInCombat(Group3HWmanC) == false and Group3HWmanC ~= nil and IsAlive(Group3HWmanC) == true or IsAlive(Group3HWmanC) == false or Group3HWmanC == nil then
            if IsInCombat(Group3HWmanD) == false and Group3HWmanD ~= nil and IsAlive(Group3HWmanD) == true or IsAlive(Group3HWmanD) == false or Group3HWmanD == nil then
            

                    LeavingCrouch(NPC)--STARTS DESPAWN
            --LeavingCrouch(NPC,Spawn) 
            
            else
            AddTimer(NPC,300000,"AliveCheck")
            end
        else
        AddTimer(NPC,300000,"AliveCheck")
        end
    else
    AddTimer(NPC,300000,"AliveCheck")
    end
else
AddTimer(NPC,300000,"AliveCheck") 
end
            else
            AddTimer(NPC,300000,"AliveCheck")    
            end
        else
        AddTimer(NPC,300000,"AliveCheck")
        end
    else
    AddTimer(NPC,300000,"AliveCheck") 
    end
else
AddTimer(NPC,300000,"AliveCheck")    
end
            else
            AddTimer(NPC,300000,"AliveCheck")
            end                                
        else
        AddTimer(NPC,300000,"AliveCheck")
        end  
    else
    AddTimer(NPC,300000,"AliveCheck")
    end  
end
end




function LeavingCrouch(NPC) --DESPAWNING ANIMATIONS OF HIGHWAYMEN
    local zone = GetZone(NPC)
    local Group1HWmanA = GetSpawnByLocationID(zone, 133784689)
    local Group1HWmanB = GetSpawnByLocationID(zone, 133784686)
    local Group1HWmanC = GetSpawnByLocationID(zone, 133784687)
    local Group1HWmanD = GetSpawnByLocationID(zone, 133784688)

    local Group2HWmanA = GetSpawnByLocationID(zone, 133784693)
    local Group2HWmanB = GetSpawnByLocationID(zone, 133784690)
    local Group2HWmanC = GetSpawnByLocationID(zone, 133784691)
    local Group2HWmanD = GetSpawnByLocationID(zone, 133784692)
    
    local Group3HWmanA = GetSpawnByLocationID(zone, 133784697)
    local Group3HWmanB = GetSpawnByLocationID(zone, 133784694)
    local Group3HWmanC = GetSpawnByLocationID(zone, 133784695)
    local Group3HWmanD = GetSpawnByLocationID(zone, 133784696)
    if Group1HWmanA ~=nil then
     CastSpell(Group1HWmanA,320022)
    PlayFlavor(Group1HWmanA,"","","duck",0,0)
    AddTimer(NPC,2200,"Despawning")
    end
    if Group1HWmanB ~=nil then
    CastSpell(Group1HWmanB,320022)
    PlayFlavor(Group1HWmanB,"","","duck",0,0)
    AddTimer(NPC,2200,"Despawning")
    end    
     if Group1HWmanC ~=nil then
     CastSpell(Group1HWmanC,320022)
    PlayFlavor(Group1HWmanC,"","","duck",0,0)
    AddTimer(NPC,2200,"Despawning")
    end   
     if Group1HWmanD ~=nil then
     CastSpell(Group1HWmanD,320022)
    PlayFlavor(Group1HWmanD,"","","duck",0,0)
    AddTimer(NPC,2200,"Despawning")
    end   
    if Group2HWmanA ~=nil then
    CastSpell(Group2HWmanA,320022)
    PlayFlavor(Group2HWmanA,"","","duck",0,0)
    AddTimer(NPC,2200,"Despawning")
    end
    if Group2HWmanB ~=nil then
    CastSpell(Group2HWmanB,320022)
    PlayFlavor(Group2HWmanB,"","","duck",0,0)
    AddTimer(NPC,2200,"Despawning")
    end
    if Group2HWmanC ~=nil then
    CastSpell(Group2HWmanC,320022)
    PlayFlavor(Group2HWmanC,"","","duck",0,0)
    AddTimer(NPC,2200,"Despawning")
    end
    if Group2HWmanD ~=nil then
     CastSpell(Group2HWmanD,320022)
    PlayFlavor(Group2HWmanD,"","","duck",0,0)
    AddTimer(NPC,2200,"Despawning")
    end
    if Group3HWmanA ~=nil then
    CastSpell(Group3HWmanA,320022)
    PlayFlavor(Group3HWmanA,"","","duck",0,0)
    AddTimer(NPC,2200,"Despawning")
    end
    if Group3HWmanB ~=nil then
    CastSpell(Group3HWmanB,320022)
    PlayFlavor(Group3HWmanB,"","","duck",0,0)
    AddTimer(NPC,2200,"Despawning")
    end
    if Group3HWmanC ~=nil then
    CastSpell(Group3HWmanC,320022)
    PlayFlavor(Group3HWmanC,"","","duck",0,0)
    AddTimer(NPC,2200,"Despawning")
    end
    if Group3HWmanD ~=nil then
    CastSpell(Group3HWmanD,320022)
    PlayFlavor(Group3HWmanD,"","","duck",0,0)
    AddTimer(NPC,2200,"Despawning")
    end    

end


function Despawning(NPC,Spawn) --DESPAWNING OF HIGHWAYMEN
    local zone = GetZone(NPC)
    local Group1HWmanA = GetSpawnByLocationID(zone, 133784689)
    local Group1HWmanB = GetSpawnByLocationID(zone, 133784686)
    local Group1HWmanC = GetSpawnByLocationID(zone, 133784687)
    local Group1HWmanD = GetSpawnByLocationID(zone, 133784688)

    local Group2HWmanA = GetSpawnByLocationID(zone, 133784693)
    local Group2HWmanB = GetSpawnByLocationID(zone, 133784690)
    local Group2HWmanC = GetSpawnByLocationID(zone, 133784691)
    local Group2HWmanD = GetSpawnByLocationID(zone, 133784692)
    
    local Group3HWmanA = GetSpawnByLocationID(zone, 133784697)
    local Group3HWmanB = GetSpawnByLocationID(zone, 133784694)
    local Group3HWmanC = GetSpawnByLocationID(zone, 133784695)
    local Group3HWmanD = GetSpawnByLocationID(zone, 133784696)
    
    if Group1HWmanA ~=nil then
        Despawn(Group1HWmanA)
    end
    if Group1HWmanB ~=nil then
        Despawn(Group1HWmanB)
    end    
     if Group1HWmanC ~=nil then
        Despawn(Group1HWmanC)
    end   
     if Group1HWmanD ~=nil then
        Despawn(Group1HWmanD)
    end   
    if Group2HWmanA ~=nil then
        Despawn(Group2HWmanA)
    end
    if Group2HWmanB ~=nil then
        Despawn(Group2HWmanB)
    end
    if Group2HWmanC ~=nil then
        Despawn(Group2HWmanC)
    end
    if Group2HWmanD ~=nil then
        Despawn(Group2HWmanD)
    end
    if Group3HWmanA ~=nil then
        Despawn(Group3HWmanA)
    end
    if Group3HWmanB ~=nil then
        Despawn(Group3HWmanB)
    end
    if Group3HWmanC ~=nil then
        Despawn(Group3HWmanC)
    end
    if Group3HWmanD ~=nil then
        Despawn(Group3HWmanD)
    end
    AddTimer(NPC,2000,"FinalDespawn")
end

function FinalDespawn(NPC)
    local zone = GetZone(NPC)
if GetSpawnByLocationID(zone, 133784683) ~= nil then
Despawn(GetSpawnByLocationID(zone, 133784683))
end
if GetSpawnByLocationID(zone, 133784684) ~= nil then
Despawn(GetSpawnByLocationID(zone, 133784684))
end
end
        
function respawn(NPC)
	spawn(NPC)
end
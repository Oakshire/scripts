--[[
    Script Name    : SpawnScripts/IsleRefuge1/GuttertoothWarTotem.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.06 02:09:14
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	-- set the calls to the ai as there is no ai
	SetLuaBrain(NPC)
	SetBrainTick(NPC, 600000)
	-- give the spawn a crap load of hp so we can't one hit kill
	SetHP(NPC, 1000000)
    SetRequiredQuest(NPC,5734,1)
end

function casted_on(NPC, Spawn, Message)
    if Message == "Smite" then

    SpawnSet(NPC,"visual_state",3120)
    PlaySound(NPC,"sounds/widgets/chests/chest_smash001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
    GoblinRevenge(NPC,Spawn)
    AddTimer(NPC,800,"Collapse")  
    AddTimer(NPC,4200,"CoolOff")  
    AddTimer(NPC,6000,"Despawning")  
    end
end



function Collapse(NPC)
SpawnSet(NPC,"model_type",1428)
PlaySound(NPC,"sounds/widgets/chests/chest_smash001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
end

function CoolOff(NPC)
    SpawnSet(NPC,"visual_state",0)

end

function respawn(NPC)
	spawn(NPC)
end

function Despawning(NPC,Spawn)
    KillSpawn(NPC)
    Despawn(NPC)
end

function Think(NPC,Target)
	-- no ai so won't attack
	return
end

function healthchanged(NPC, Spawn)
	-- insta heal so should be impossible to kill without the /kill command
	SetHP(NPC, GetMaxHP(NPC))
end


function GoblinRevenge(NPC,Spawn)
    local zone = GetZone(Spawn)
    local Totem1 =  GetSpawnByLocationID(zone, 133774885)
    local Totem2 =  GetSpawnByLocationID(zone, 133774886)
    local Totem3 =  GetSpawnByLocationID(zone, 133774887)
    local Totem4 =  GetSpawnByLocationID(zone, 133774888)
    local Totem5 =  GetSpawnByLocationID(zone, 133774889)
    local Totem6 =  GetSpawnByLocationID(zone, 133774890)

    local Goblin1 = GetSpawnByLocationID(zone, 133774844)
    local Goblin2 = GetSpawnByLocationID(zone, 133774846)
    local Goblin3 = GetSpawnByLocationID(zone, 133774842)
    local Goblin4 = GetSpawnByLocationID(zone, 133774847)
    local Goblin5 = GetSpawnByLocationID(zone, 133774841)
    local Goblin6 = GetSpawnByLocationID(zone, 133774840)
    local GoblinPop  = GetSpawnByLocationID(zone,133775496)  
    
    if GetSpawnLocationID(NPC) == 133774885 then
        if IsAlive(Goblin1)==true and IsInCombat(Goblin1)==false then
            Attack(Goblin1,Spawn)
            AddHate(Spawn, Goblin1, 50)
        else GoblinPopping = SpawnByLocationID(zone,133775496)
             Attack(GoblinPopping,Spawn)
             AddHate(Spawn, GoblinPopping, 50)
        end
        
    elseif GetSpawnLocationID(NPC) == 133774886 then
        if IsAlive(Goblin2)==true and IsInCombat(Goblin2)==false then
            Attack(Goblin2,Spawn)
            AddHate(Spawn, Goblin2, 50)
        else GoblinPopping = SpawnByLocationID(zone,133775496)
             Attack(GoblinPopping,Spawn)
             AddHate(Spawn, GoblinPopping, 50)
        end
        
    elseif GetSpawnLocationID(NPC) == 133774887 then
        if IsAlive(Goblin3)==true and IsInCombat(Goblin3)==false then
            Attack(Goblin3,Spawn)
            AddHate(Spawn, Goblin3, 50)
        else GoblinPopping = SpawnByLocationID(zone,133775496)
             Attack(GoblinPopping,Spawn)
             AddHate(Spawn, GoblinPopping, 50)
        end
        
    elseif GetSpawnLocationID(NPC) == 133774888 then
        if IsAlive(Goblin4)==true and IsInCombat(Goblin4)==false then
            Attack(Goblin4,Spawn)
            AddHate(Spawn, Goblin4, 50)
        else GoblinPopping = SpawnByLocationID(zone,133775496)
             Attack(GoblinPopping,Spawn)
             AddHate(Spawn, GoblinPopping, 50)
        end  
        
    elseif GetSpawnLocationID(NPC) == 133774889 then
        if IsAlive(Goblin5)==true and IsInCombat(Goblin5)==false then
            Attack(Goblin5,Spawn)
            AddHate(Spawn, Goblin5, 50)
        else GoblinPopping = SpawnByLocationID(zone,133775496)
             Attack(GoblinPopping,Spawn)
             AddHate(Spawn, GoblinPopping, 50)
        end  
        
    elseif GetSpawnLocationID(NPC) == 133774880 then
        if IsAlive(Goblin6)==true and IsInCombat(Goblin6)==false then
            Attack(Goblin6,Spawn)
            AddHate(Spawn, Goblin6, 50)
        else GoblinPopping = SpawnByLocationID(zone,133775496)
             Attack(GoblinPopping,Spawn)
             AddHate(Spawn, GoblinPopping, 50)
        end 
    end
end
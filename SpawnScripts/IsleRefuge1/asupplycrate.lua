--[[
    Script Name    : SpawnScripts/IsleRefuge1/asupplycrate.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.05 04:09:53
    Script Purpose : 
    Note: Gave crates each their own goblin protector and a replacement if theirs is gone. - Dorbin
--]]
local Healing = true

function spawn(NPC)
	-- set the calls to the ai as there is no ai
	SetLuaBrain(NPC)
	SetBrainTick(NPC, 600000)
	-- give the spawn a crap load of hp so we can't one hit kill
	SetHP(NPC, 1000000)
    SetRequiredQuest(NPC,5736,1)
--    SetInvulnerable(NPC)
end

function casted_on(NPC, Spawn, Message)
    if Message == "Lightning Burst" then
        SpawnSet(NPC,"visual_state",3120)
    GoblinRevenge(NPC,Spawn)
    AddTimer(NPC,4200,"Collapse")    
    AddTimer(NPC,6000,"Despawning")    
    end
end

function respawn(NPC)
	spawn(NPC)
end


function Think(NPC,Target)
	-- no ai so won't attack
	return
end

function healthchanged(NPC, Spawn)
	-- insta heal, so should be impossible to kill without the /kill command
	SetHP(NPC, GetMaxHP(NPC))
end

function Collapse(NPC)
SpawnSet(NPC,"model_type",2501)
PlaySound(NPC,"sounds/widgets/chests/chest_smash001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
end

function Despawning(NPC,Spawn)
    KillSpawn(NPC)
    Despawn(NPC)
end
    
function death(NPC, Spawn)
end

function aggro(NPC,Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function GoblinRevenge(NPC,Spawn)
    local zone = GetZone(Spawn)

    local Crate1 =  GetSpawnByLocationID(zone, 133774895)
    local Goblin1 = GetSpawnByLocationID(zone, 133774771)

    local Crate2 =  GetSpawnByLocationID(zone, 133774896)
    local Goblin2 = GetSpawnByLocationID(zone, 133774978)

    local Crate3 =  GetSpawnByLocationID(zone, 133774897)
    local Goblin3 = GetSpawnByLocationID(zone, 133774989)

    local Crate4 =  GetSpawnByLocationID(zone, 133774898)
    local Goblin4 = GetSpawnByLocationID(zone, 133774775)

    local Crate5 =  GetSpawnByLocationID(zone, 133774899)
    local Goblin5 = GetSpawnByLocationID(zone, 133774976)

    local Crate6 =  GetSpawnByLocationID(zone, 133774900)
    local Goblin6 = GetSpawnByLocationID(zone, 133774776)

    local Crate7 =  GetSpawnByLocationID(zone, 133774901)
    local Goblin7 = GetSpawnByLocationID(zone, 133774779)

    local Crate8 =  GetSpawnByLocationID(zone, 133774902)
    local Goblin8 = GetSpawnByLocationID(zone, 133774778)
    
    local Crate9 =  GetSpawnByLocationID(zone, 133774892)
    local Goblin9 = GetSpawnByLocationID(zone, 133775605)

    local Crate10 =  GetSpawnByLocationID(zone, 133774893)
    local Goblin10 = GetSpawnByLocationID(zone, 133774773)

    local Crate11 =  GetSpawnByLocationID(zone, 133774894)
    local Goblin11 = GetSpawnByLocationID(zone, 133774781)



   local GoblinPop1  = GetSpawnByLocationID(zone,133775330)  --Crates 4,5,6,1
   local GoblinPop2  = GetSpawnByLocationID(zone,133775328) --Crates 2,3,9,10,11 
   local GoblinPop3  = GetSpawnByLocationID(zone,133775331) --Crates 7,8
   

if GetSpawnLocationID(NPC) == 133774895 then
        if IsAlive(Goblin1) == true and IsInCombat(Goblin1)==false then
            Attack(Goblin1,Spawn)
            AddHate(Spawn, Goblin1, 50)
        else GoblinPop1 = SpawnByLocationID(zone,133775330)
             Attack(GoblinPop1,Spawn)
             AddHate(Spawn, GoblinPop1, 50)
        end
        
    elseif GetSpawnLocationID(NPC) == 133774896 then
        if IsAlive(Goblin2) == true and IsInCombat(Goblin2) == false then
            Attack(Goblin2,Spawn)
            AddHate(Spawn, Goblin2, 50)
        else GoblinPop2 = SpawnByLocationID(zone,133775328)
             Attack(GoblinPop2,Spawn)
             AddHate(Spawn, GoblinPop2, 50)
        end
        
    elseif GetSpawnLocationID(NPC) == 133774897 then
        if IsAlive(Goblin3) == true and IsInCombat(Goblin3) == false then
            Attack(Goblin3,Spawn)
            AddHate(Spawn, Goblin3, 50)
        else GoblinPop2 = SpawnByLocationID(zone,133775328)
             Attack(GoblinPop2,Spawn)
             AddHate(Spawn, GoblinPop2, 50)
        end
        
    elseif GetSpawnLocationID(NPC) == 133774898 then
        if IsAlive(Goblin4) == true and IsInCombat(Goblin4) == false then
            Attack(Goblin4,Spawn)
            AddHate(Spawn, Goblin4, 50)
        else GoblinPop1 = SpawnByLocationID(zone,133775330)
             Attack(GoblinPop1,Spawn)
             AddHate(Spawn, GoblinPop1, 50)
        end  
        
    elseif GetSpawnLocationID(NPC) == 133774899 then
        if IsAlive(Goblin5) == true and IsInCombat(Goblin5) == false then
            Attack(Goblin5,Spawn)
            AddHate(Spawn, Goblin5, 50)
        else GoblinPop1 = SpawnByLocationID(zone,133775330)
             Attack(GoblinPop1,Spawn)
             AddHate(Spawn, GoblinPop1, 50)
        end  
        
    elseif GetSpawnLocationID(NPC) == 133774900 then
        if IsAlive(Goblin6) == true and IsInCombat(Goblin6) == false then
            Attack(Goblin6,Spawn)
            AddHate(Spawn, Goblin6, 50)
        else GoblinPop1 = SpawnByLocationID(zone,133775330)
             Attack(GoblinPop1,Spawn)
             AddHate(Spawn, GoblinPop1, 50)
        end 
        
    elseif GetSpawnLocationID(NPC) == 133774901 then
        if IsAlive(Goblin7) == true and IsInCombat(Goblin7)==false then
            Attack(Goblin7,Spawn)
            AddHate(Spawn, Goblin7, 50)
        else GoblinPop3 = SpawnByLocationID(zone,133775331)
             Attack(GoblinPop3,Spawn)
             AddHate(Spawn, GoblinPop3, 50)
        end
        
    elseif GetSpawnLocationID(NPC) == 133774902 then
        if IsAlive(Goblin8) == true and IsInCombat(Goblin8) == false then
            Attack(Goblin8,Spawn)
            AddHate(Spawn, Goblin8, 50)
        else GoblinPop3 = SpawnByLocationID(zone,133775331)
             Attack(GoblinPop3,Spawn)
             AddHate(Spawn, GoblinPop3, 50)
        end
        
    elseif GetSpawnLocationID(NPC) == 133774892 then
        if IsAlive(Goblin9) == true and IsInCombat(Goblin9) == false then
            Attack(Goblin9,Spawn)
            AddHate(Spawn, Goblin9, 50)
        else GoblinPop3 = SpawnByLocationID(zone,133775328)
             Attack(GoblinPop,Spawn)
             AddHate(Spawn, GoblinPop, 50)
        end
        
    elseif GetSpawnLocationID(NPC) == 133774893 then
        if IsAlive(Goblin10) == true and IsInCombat(Goblin10) == false then
            Attack(Goblin10,Spawn)
            AddHate(Spawn, Goblin10, 50)
        else GoblinPopping = SpawnByLocationID(zone,133775328)
             Attack(GoblinPop,Spawn)
             AddHate(Spawn, GoblinPop, 50)
        end  
        
    elseif GetSpawnLocationID(NPC) == 133774894 then
        if IsAlive(Goblin11) == true and IsInCombat(Goblin11) == false then
            Attack(Goblin11,Spawn)
            AddHate(Spawn, Goblin11, 50)
        else GoblinPop2 = SpawnByLocationID(zone,133775496)
             Attack(GoblinPop2,Spawn)
             AddHate(Spawn, GoblinPop2, 50)
        end  
        
    end
end

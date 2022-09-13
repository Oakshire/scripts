--[[
    Script Name    : SpawnScripts/IsleRefuge1/asupplycrate.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.05 04:09:53
    Script Purpose : 
                   : 
--]]
local Healing = true

function spawn(NPC)
	-- set the calls to the ai as there is no ai
	SetLuaBrain(NPC)
	SetBrainTick(NPC, 600000)
	-- give the spawn a crap load of hp so we can't one hit kill
	SetHP(NPC, 1000000)
    SetRequiredQuest(NPC,5736,1)
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
	-- insta heal so should be impossible to kill without the /kill command
if Healing == true then
	SetHP(NPC, GetMaxHP(NPC))
end
end

function Collapse(NPC)
SpawnSet(NPC,"model_type",2501)
PlaySound(NPC,"sounds/widgets/chests/chest_smash001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
KillSpawn(NPC)
end

function Despawning(NPC,Spawn)
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
local zone = GetZone(NPC)
local Goblin = GetSpawnByLocationID(zone,133775328)
if GetSpawnLocationID(NPC) ==133774893 or GetSpawnLocationID(NPC) ==133774894 or GetSpawnLocationID(NPC) ==133774892 then
    SpawnByLocationID(zone,133775328)
if Goblin ~=nil then
    Attack(Goblin,Spawn)
    AddHate(Goblin,Spawn,70,1)
end
    end
end

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
end

function casted_on(NPC, Spawn, Message)
    if Message == "Smite" then

    SpawnSet(NPC,"visual_state",3120)
    PlaySound(NPC,"sounds/widgets/chests/chest_smash001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
--    GoblinRevenge(NPC,Spawn)
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
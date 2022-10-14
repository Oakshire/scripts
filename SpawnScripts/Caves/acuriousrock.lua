--[[
    Script Name    : SpawnScripts/Caves/acuriousrock.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.13 07:10:20
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, Message)
    if Message == "smash" then
    SetAccessToEntityCommand(Spawn,NPC,"smash", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)    
    if IsStealthed(Spawn)  then
--    RemoveStealth(NPC,Spawn)
    end
    if  IsInvis(Spawn) then
--    RemoveInvis(NPC,Spawn)
    end
    PlayFlavor(Spawn,"","","kick",0,0)
    SpawnSet(NPC,"visual_state",4164)

    local choice = MakeRandomInt(1,100)
    if choice <= 33 then
    SendMessage(Spawn,"You've found something inside the rock!")
    local LootChoice = MakeRandomInt(1,17)
    if LootChoice == 1 then
    SummonItem(Spawn,1619,1) --a dull mineral cluster
    elseif  LootChoice == 2 then
    SummonItem(Spawn,164540,1) --miner's ring
    elseif  LootChoice == 3 then
    SummonItem(Spawn,5489,1) -- copper cluster
    elseif  LootChoice == 4 then
    SummonItem(Spawn,4689,1) -- bronze cluster
    elseif  LootChoice == 5 then
    SummonItem(Spawn,138927,1) --circlet of hardened sand
    elseif  LootChoice == 6 then
    SummonItem(Spawn,11703,3) --rough malachite
    elseif  LootChoice == 7 then
    SummonItem(Spawn,13585,1) --sundered obsidian
     elseif  LootChoice == 8 then
    SummonItem(Spawn,14463,3) -- tin cluster
     elseif  LootChoice == 9 then
    SummonItem(Spawn,14463,3) -- tin clusterx2
    elseif  LootChoice == 10 then
    SummonItem(Spawn,11703,3) --rough malachitex2
    elseif  LootChoice == 11 then
    SummonItem(Spawn,13585,1) --sundered obsidianx2
     elseif  LootChoice == 12 then
    SummonItem(Spawn,14463,3) -- tin clusterx2
    elseif  LootChoice == 13 then
    SummonItem(Spawn,164540,1) --miner's ringx2
    elseif  LootChoice == 14 then
    SummonItem(Spawn,164540,1) --miner's ringx3
    end
else
    SendMessage(Spawn,"The rock crumbles into fragments, but there is nothing inside.")
    end

    AddTimer(NPC,500,"Collapse")    
    AddTimer(NPC,2000,"Despawning")    
    end
end

function Collapse(NPC)
SpawnSet(NPC,"model_type",2501)
PlaySound(NPC,"sounds/widgets/chests/chest_smash001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))

end

function Despawning(NPC,Spawn)
    SpawnSet(NPC,"visual_state",0)
    Despawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end
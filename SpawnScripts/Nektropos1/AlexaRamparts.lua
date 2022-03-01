--[[
    Script Name    : SpawnScripts/Nektropos1/AlexaRamparts.lua
    Script Author  : smash
    Script Date    : 2016.02.02 01:02:43
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetTempVariable(NPC, "talking") ~= "true" then
        SetTempVariable(NPC, "talking", "true")
        StartDialogLoop(NPC, Spawn)
    end
end

function StartDialogLoop(NPC, Spawn)
    Say(NPC, "I knew you were strong enough to save me.")
    AddTimer(NPC, 3500, "Dialog2", 1, Spawn)
end

function Dialog2(NPC, Spawn)
    Say(NPC, "In order to get into the room where Lord Everling keeps his most prized possessions")
    AddTimer(NPC, 3000, "Dialog3", 1, Spawn)
end

function Dialog3(NPC, Spawn)
    Say(NPC, "you'll need to gather six lockets.")
    AddTimer(NPC, 3000, "Dialog4", 1, Spawn)
end

function Dialog4(NPC, Spawn)
    Say(NPC, "Everling gave a locket to each of his six daughters. Only with all six can the door be opened.")
    AddTimer(NPC, 3500, "Dialog5", 1, Spawn)
end

function Dialog5(NPC, Spawn)
    Say(NPC, "Get these lockets from the sisters however you can.")
    AddTimer(NPC, 3000, "Dialog6", 1, Spawn)
end

function Dialog6(NPC, Spawn)
    Say(NPC, "Please hurry.")
    AddTimer(NPC, 3000, "Despawn")
    
    --Offer The Everling Lockets to the whole group
    local player_group = GetGroup(Spawn)
    if player_group ~= nil then
        for k,v in ipairs(player_group) do
            if IsPlayer(v) and CanReceiveQuest(v, 177) then
                OfferQuest(nil, v, 177)
            end
        end
    elseif CanReceiveQuest(Spawn, 177) then
        OfferQuest(nil, Spawn, 177)
    end
end
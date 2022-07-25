function spawn(NPC)
    SetRequiredQuest(NPC, 1, 1,0)
end

function respawn(NPC)
    spawn(NPC)
end
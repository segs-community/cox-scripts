--include_lua('officer_flint.lua')
include_lua('EncounterSpawns.lua')

spawnContams = false

entity_interact = function(id, location)

    --print("You clicked " .. tostring(id) .. " at location " .. tostring(location.x) .. " y: " .. tostring(location.y) .. " z: " .. tostring(location.z))

    if id == 5 then      --This is Officer Flint
        MapClientSession.simple_dialog(client, "<img src=npc:1939 align=left height=40 width=40>Use /moveto -85 0 1330 to get to Officer Parks quickly.")
    elseif id == 2 then    --This is Officer Parks
        if spawnContams then
                MapClientSession.simple_dialog(client, "<img src=npc:1940 align=left height=40 width=40>It's dangerous out here.")
                return ""
        end

        Spawn()
        MapClientSession.simple_dialog(client, "<img src=npc:1940 align=left height=40 width=40>Be careful, there are dangerous drug users nearby.")
        spawnContams = true
    elseif id >= 303 and id <= 319 then
        MapClientSession.simple_dialog(client, [[PEW! PEW! <br><br>"Uggggh ... you got me!"]])
    else  --Anyone else
        MapClientSession.simple_dialog(client, "DANGEROUS AREA.")
    end

  return ""
end


set_target = function(id)
    print("target id " .. tostring(id))
    Character.faceEntity(client.m_ent, id)
    return ""
end


dialog_button = function(id)
    print("buttonId: " .. tostring(id))

    return ""
end

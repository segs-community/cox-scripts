include_lua('EncounterSpawns.lua')

entity_interact = function(id, location)

    --print("You clicked " .. tostring(id) .. " at location " .. tostring(location.x) .. " y: " .. tostring(location.y) .. " z: " .. tostring(location.z))
    print("ID: " .. tostring(id) .. " LOCATION: " .. tostring(location))

    MapClientSession.simple_dialog(client, "There are reports of trouble on the bridge. You better check it out.")
    Spawn()

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

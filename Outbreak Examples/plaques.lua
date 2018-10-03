-- contactTable starts as an empty global table and is accessable from all scripts.

plaque_visited = function(id)
    print("plaque_visited: " .. tostring(id) .. ",")
    if id == 1852042661 then

    elseif id == 1774750002 then
        return "Police callbox" 
    elseif id == 1518617916 then
        --do nothing, Message handled in locations.lua
    else
        MapClientSession.simple_dialog(client, "plaque_visited: " .. tostring(id))
    end

    return ""
end

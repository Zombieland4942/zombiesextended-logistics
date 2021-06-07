local function init_loaders()
    if remote.interfaces["loader-redux"] then
        remote.call("loader-redux", "add_loader", "transport-belt-mk1-loader")
        remote.call("loader-redux", "add_loader", "transport-belt-mk2-loader")
    end
end

script.on_init(
    function()
        init_loaders()
    end
)

script.on_configuration_changed(
    function()
        init_loaders()
    end
)

script.on_load(
    function()
        init_loaders()
    end
)


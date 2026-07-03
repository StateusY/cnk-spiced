#> spiced.iris:setup/storage
#
# Sets up storage for Iris
#
# @within spiced.iris:setup/load

data merge storage spiced.iris:data {is_setup: 1b}

# Set default settings
data merge storage spiced.iris:settings {\
    TargetEntities: false,\
    MaxRecursionDepth: 16,\
    Blacklist: "#spiced.iris:shape_groups/air"\
}
